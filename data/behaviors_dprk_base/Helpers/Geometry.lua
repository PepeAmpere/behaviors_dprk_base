return {
    GetPolygonCenter = function(polygon)
        local sumX, sumY = 0, 0
        local count = polygon:Count()

        for j = 1, count do
            local v = polygon:Vertex(j)
            sumX = sumX + v:X()
            sumY = sumY + v:Y()
        end

        local center = Vec3(sumX / count, sumY / count, 0)
        return GetSurfacePosition(center)
    end,

    IsInPolygon = function(polygon, point)
        local inside = false
        local count = polygon:Count()

        local px = point:X()
        local py = point:Y()

        local j = count

        for i = 1, count do
            local vi = polygon:Vertex(i)
            local vj = polygon:Vertex(j)

            local xi, yi = vi:X(), vi:Y()
            local xj, yj = vj:X(), vj:Y()

            local intersect =
                ((yi > py) ~= (yj > py)) and
                (px < (xj - xi) * (py - yi) / (yj - yi + 0.0) + xi)

            if intersect then
                inside = not inside
            end

            j = i
        end
    return inside
    end,

    GetAABB = function(polygon)
    local count = polygon:Count()

    local v = polygon:Vertex(1)
    local minX, maxX = v:X(), v:X()
    local minY, maxY = v:Y(), v:Y()

    for i = 2, count do
        local vert = polygon:Vertex(i)
        local x, y = vert:X(), vert:Y()

        if x < minX then minX = x end
        if x > maxX then maxX = x end
        if y < minY then minY = y end
        if y > maxY then maxY = y end
    end

    return {
        minX = minX,
        minY = minY,
        maxX = maxX,
        maxY = maxY
    }
end,

pointKey = function(p)
    return string.format("%.4f_%.4f_%.4f", p:X(), p:Y(), p:Z())
end,

GenerateGridPoints = function(polygon, h)
    local aabb = GetAABB(polygon)
    local points = {}
    local startX = math.floor(aabb.minX / h) * h
    local startY = math.floor(aabb.minY / h) * h
    for x = startX, aabb.maxX, h do
        for y = startY, aabb.maxY, h do
            local point = GetSurfacePosition(Vec3(x, y, 0))
            if IsInPolygon(polygon, point) then
                table.insert(points, point)
            end
        end
    end
    return points
end,

GenerateCells = function(polygon, w, h)
    local aabb = GetAABB(polygon)
    local rects = {}

    local startX = math.floor(aabb.minX / w) * w
    local startY = math.floor(aabb.minY / h) * h

    for x = startX, aabb.maxX, w do
        for y = startY, aabb.maxY, h do
            local gx = (x - startX) / w
            local gy = (y - startY) / h
            local center = GetSurfacePosition(Vec3(x + w/2, y + h/2, 0))

            local rect = {
                GetSurfacePosition(Vec3(x,     y,     0)),
                GetSurfacePosition(Vec3(x + w, y,     0)),
                GetSurfacePosition(Vec3(x + w, y + h, 0)),
                GetSurfacePosition(Vec3(x,     y + h, 0))
            }

            table.insert(rects, 
            {cellId = #rects + 1, 
             gx = gx,
             gy = gy,
             center = GetSurfacePosition(center), 
             polygon = Polygon(rect), 
             isValid = IsInPolygon(polygon, center)
             })
        end
    end

    return rects
end,

WorldToGrid = function(point, startX, startY, w, h)
    local gx = math.floor((point.x - startX) / w)
    local gy = math.floor((point.y - startY) / h)
    return gx, gy
end,

GetCellsInCellRange = function(cells, gx, gy, range)
    local result = {}

    for _, cell in ipairs(cells) do
        if math.abs(cell.gx - gx) <= range and math.abs(cell.gy - gy) <= range then
            if cell.isValid then
                table.insert(result, cell)
            end
        end
    end
    return result
end,

GetMostCoveredNeighbor = function(cells, cell, range)
    local neighbors = GetCellsInCellRange(cells, cell.gx, cell.gy, range)
    local mostCovered = 0
    for i, neighbor in ipairs(neighbors) do
        DebugLog(tostring(neighbor.sectorId))
        if (neighbor.isValid and neighbor.sectorId ~= cell.sectorId) then
            if (#neighbor.coverOutlines > mostCovered) then
                mostCovered = #neighbor.coverOutlines
            end
        end
    end
    return mostCovered
end,

GetCoverGrid = function(polygon, h, sectorCovers)
    local aabb = GetAABB(polygon)
    local grid = {
        minX = aabb.minX,
        minY = aabb.minY,
        h = h,
        cells = {}
    }
    local pointNeighbors = {}
    local pointMeta = {}

    for _, cover in ipairs(sectorCovers) do
        local verts = cover.vertices
        local n = #verts
        for i = 1, n do
            local a = verts[i]
            local b = verts[(i % n) + 1]
            local ka = pointKey(a)
            local kb = pointKey(b)
            pointNeighbors[ka] = pointNeighbors[ka] or {}
            pointNeighbors[kb] = pointNeighbors[kb] or {}
            table.insert(pointNeighbors[ka], b)
            table.insert(pointNeighbors[kb], a)
        end
        for _, point in ipairs(verts) do
            if IsInPolygon(polygon, point) then
                local localX = point:X() - grid.minX
                local localY = point:Y() - grid.minY
                local gi = math.floor(localX / h)
                local gj = math.floor(localY / h)
                local k = pointKey(point)
                pointMeta[k] = { gridI = gi, gridJ = gj, key = k, point = point }
                grid.cells[gi] = grid.cells[gi] or {}
                grid.cells[gi][gj] = grid.cells[gi][gj] or {}
                table.insert(grid.cells[gi][gj], k)
            end
        end
    end
    return grid, pointNeighbors, pointMeta
end,

GetClusters = function(grid, pointNeighbors, pointMeta, scale)
    scale = scale or 1
    local visited = {}
    local clusters = {}
    local directions = {}
    for di = -scale, scale do
        for dj = -scale, scale do
            if not (di == 0 and dj == 0) then
                table.insert(directions, {di, dj})
            end
        end
    end

    local function getSpatialNeighborKeys(meta)
        local result = {}
        local i, j = meta.gridI, meta.gridJ
        for _, d in ipairs(directions) do
            local ni, nj = i + d[1], j + d[2]
            if grid.cells[ni] and grid.cells[ni][nj] then
                for _, k in ipairs(grid.cells[ni][nj]) do
                    table.insert(result, k)
                end
            end
        end
        return result
    end

    local function bfs(startKey)
        local queue = {startKey}
        local clusterPoints = {}
        visited[startKey] = true
        local head = 1
        while head <= #queue do
            local k = queue[head]
            head = head + 1
            local meta = pointMeta[k]
            if meta then
                table.insert(clusterPoints, meta.point)
                for _, neighbor in ipairs(pointNeighbors[k] or {}) do
                    local nk = pointKey(neighbor)
                    if not visited[nk] then
                        visited[nk] = true
                        table.insert(queue, nk)
                    end
                end
                for _, nk in ipairs(getSpatialNeighborKeys(meta)) do
                    if not visited[nk] then
                        visited[nk] = true
                        table.insert(queue, nk)
                    end
                end
            end
        end
        return Polygon(clusterPoints)
    end

    for _, row in pairs(grid.cells) do
        for _, cell in pairs(row) do
            for _, k in ipairs(cell) do
                if not visited[k] then
                    local clusterPoly = bfs(k)
                    local cluster = {polygon = clusterPoly, center = GetPolygonCenter(clusterPoly)}
                    if cluster.polygon:Count() > 2 then
                        table.insert(clusters, cluster)
                    end
                end
            end
        end
    end
    return clusters
end,

SortPolygonVertices = function(polygon)
    local center = GetPolygonCenter(polygon)
    local points = {}
    for i = 1, polygon:Count() do
        points[i] = polygon:Vertex(i)
    end

    table.sort(points, function(a, b)
        local angleA = math.atan2(a:Y() - center:Y(), a:X() - center:X())
        local angleB = math.atan2(b:Y() - center:Y(), b:X() - center:X())
        return angleA < angleB
    end)

    return Polygon(points)
end,

PolygonArea = function(poly)
    local n = poly:Count()

    local points = {}
    for i = 1, n do
        points[i] = poly:Vertex(i)
    end

    local sum = 0
    for i = 1, n do
        local j = (i % n) + 1 
        sum = sum + points[i]:X() * points[j]:Y()
                  - points[j]:X() * points[i]:Y()
    end
    return math.abs(sum) / 2
end,

DetermineCorrespondingSector = function(cells, polygonSectors)
    for i, cell in ipairs(cells) do
        if (cell.isValid) then
            for j, poly in ipairs(polygonSectors) do
                if (IsInPolygon(poly, cell.center)) then
                    cell.sector = poly
                    cell.sectorId = j
                    break
                end
            end
        end
    end
end,
}