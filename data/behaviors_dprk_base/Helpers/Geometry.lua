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
end
}