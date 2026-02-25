return {
    GetPolygonCenter = function(polygon)
        local sumX, sumY, sumZ = 0, 0, 0
        local count = polygon:Count()

        for j = 1, count do
            local v = polygon:Vertex(j)
            sumX = sumX + v:X()
            sumY = sumY + v:Y()
            sumZ = sumZ + v:Z()
        end

        local center = Vec3(sumX / count, sumY / count, sumZ / count)
        return center
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

GetCoverGrid = function(polygon, h, sectorCovers)
    local aabb = GetAABB(polygon)

    local grid = {
        minX = aabb.minX,
        minY = aabb.minY,
        h = h,
        cells = {}
    }

    for _, cover in ipairs(sectorCovers) do
        for _, point in ipairs(cover.vertices) do
            if IsInPolygon(polygon, point) then
                local localX = point:X() - grid.minX
                local localY = point:Y() - grid.minY

                local i = math.floor(localX / h)
                local j = math.floor(localY / h)

                grid.cells[i] = grid.cells[i] or {}
                grid.cells[i][j] = grid.cells[i][j] or {}

                table.insert(grid.cells[i][j], point)
            end
        end
    end
    return grid
end,


GetClusters = function(grid, scale)
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

    local function bfs(startI, startJ)
        local queue = {{startI, startJ}}
        local clusterPoints = {}

        visited[startI] = visited[startI] or {}
        visited[startI][startJ] = true

        local head = 1
        while head <= #queue do
            local cell = queue[head]
            head = head + 1

            local i, j = cell[1], cell[2]

            for _, point in ipairs(grid.cells[i][j]) do
                table.insert(clusterPoints, point)
            end

            for _, d in ipairs(directions) do
                local ni, nj = i + d[1], j + d[2]
                if grid.cells[ni] and grid.cells[ni][nj] then
                    visited[ni] = visited[ni] or {}
                    if not visited[ni][nj] then
                        visited[ni][nj] = true
                        table.insert(queue, {ni, nj})
                    end
                end
            end
        end

        local polygon = Polygon(clusterPoints)
        return polygon
    end

    for i, row in pairs(grid.cells) do
        for j, _ in pairs(row) do
            visited[i] = visited[i] or {}
            if not visited[i][j] then
                local clusterPoly = bfs(i, j)
                table.insert(clusters, clusterPoly)
            end
        end
    end

    return clusters
end
}