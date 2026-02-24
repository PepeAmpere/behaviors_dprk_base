return {
    GetPolygonCenter = function(polygon)
        local sumX, sumY, sumZ = 0, 0, 0
        local count = polygon:Count()  -- ????????? ?????? ????????

        for j = 1, count do
            local v = polygon:Vertex(j)
            sumX = sumX + v:X()
            sumY = sumY + v:Y()
            sumZ = sumZ + v:Z()
        end

        local center = Vec3(sumX / count, sumY / count, sumZ / count)
        return center
    end
}