return {
    BuildPathVolume = function(path, sideOffset, startOffset, startAngle, endOffset, endAngle)
        if path ~= nil then
            local offsetZ = Vec3(0, 0, 2)
            local count = path:GetSegmentCount()
            local prev_dirXY_r = nil
            local volumes = {}

            local getSegmentInfo = function(i)            
                local startPos = path:GetSegmentStart(i)
                local endPos = path:GetSegmentEnd(i)
                local dir = (endPos - startPos):Normalized()
                local dirXY = dir:NormalizedXY()
                local dirXY_r = dirXY:RotatedAroundZ(90)
                return startPos, endPos, dirXY, dirXY_r
            end

            local startPos, endPos, dirXY, dirXY_r = getSegmentInfo(0)

            startAngle = math.max(0, startAngle)
            startAngle = math.min(90, startAngle)
            local startAngleRad = math.rad(startAngle)
            local tempOffset = startOffset / math.cos(startAngleRad)
            tempOffset = tempOffset * math.sin(startAngleRad)
            
            local p0 = startPos - (sideOffset*dirXY_r)
            local p1 = startPos + (sideOffset*dirXY_r)
            local p2 = p1 - (startOffset*dirXY) + (tempOffset*dirXY_r)
            local p3 = p0 - (startOffset*dirXY) - (tempOffset*dirXY_r)
            table.insert(volumes, Polygon({p0, p1, p2, p3}))

            startPos, endPos, dirXY, dirXY_r = getSegmentInfo(count-1)

            endAngle = math.max(0, endAngle)
            endAngle = math.min(90, endAngle)
            local endAngleRad = math.rad(endAngle)
            tempOffset = endOffset / math.cos(endAngleRad)
            tempOffset = tempOffset * math.sin(endAngleRad)
            
            p0 = endPos - (sideOffset*dirXY_r)
            p1 = endPos + (sideOffset*dirXY_r)
            p2 = p1 + (endOffset*dirXY) + (tempOffset*dirXY_r)
            p3 = p0 + (endOffset*dirXY) - (tempOffset*dirXY_r)
            table.insert(volumes, Polygon({p0, p1, p2, p3}))
            
            local i = 0
            while i <= count-1 do

                startPos, endPos, dirXY, dirXY_r = getSegmentInfo(i)
                i = i + 1

                for j = i, count-1 do
                    local nextStart, _, _, _ = getSegmentInfo(j)
                    local nextDirXY = (nextStart - startPos):NormalizedXY()
                    --DebugLog(tostring(dirXY:AngleTo(nextDirXY)))
                    if math.abs(dirXY:AngleTo(nextDirXY)) > 5 then
                        endPos = nextStart
                        dirXY = nextDirXY
                        dirXY_r = dirXY:RotatedAroundZ(90)
                        i = j
                        break
                    end
                end
                
                DebugLine(startPos, startPos + Vec3(0,0,5), 1,0,1,1)
                DebugLine(endPos, endPos + Vec3(0,0,5), 1,0,1,1)

                if dirXY_r:Distance(Vec3(0,0,0)) > 0.5 then
                    p0 = endPos - (sideOffset*dirXY_r)
                    p1 = endPos + (sideOffset*dirXY_r)
                    p2 = startPos + (sideOffset*dirXY_r)
                    p3 = startPos - (sideOffset*dirXY_r)
                    table.insert(volumes, Polygon({p0, p1, p2, p3}))
                    
                    if prev_dirXY_r ~= nil then
                        local a = prev_dirXY_r
                        local b = dirXY_r
                        if a:AngleTo(b) >= 0 then
                            local temp = a
                            a = -b
                            b = -temp                
                        end
                        local c = (a+b):NormalizedXY()
                    
                        p0 = startPos + (sideOffset*b)
                        p1 = startPos + (sideOffset*c)
                        p2 = startPos + (sideOffset*a)
                        p3 = startPos
                        table.insert(volumes, Polygon({p0, p1, p2, p3}))
                    end
                    prev_dirXY_r = dirXY_r
                end
            end
            return volumes
        end
        return nil
    end,
	
	DrawPathVolume = function(volume, offsetZ, r, g, b)
        if volume ~= nil then
            local drawPolygonLine = function(p1, p2)
                local offsetZVec = Vec3(0, 0, offsetZ)
                local height1Vec = Vec3(0, 0, GetSurfacePosition(p1):Z())
                local height2Vec = Vec3(0, 0, GetSurfacePosition(p2):Z())
                DebugLine(
                    p1 + height1Vec + offsetZVec,
                    p2 + height2Vec + offsetZVec,
                    r, g, b
                )
                --DebugLog("1: " .. tostring(p1 + height1Vec + offsetZVec))
            end
            --DebugLog("1: " .. tostring(#volume))
            for i=1, #volume do
                local polygon = volume[i]
                for i=1, polygon:Count()-1 do
                    drawPolygonLine(polygon:Vertex(i), polygon:Vertex(i+1))
                end
                drawPolygonLine(polygon:Vertex(polygon:Count()), polygon:Vertex(1))
            end
        end
    end,
	
	GetEnemiesInPathVolume = function(volumes, refEntity)
        local returnEnemies = {}
        for i=1, #volumes do
            local enemies = GetEntitiesInArea(
                volumes[i],
                    { 
                        hasBrain = true, 
                        enemyOf = refEntity 
                    }
            )
            for i, entity in ipairs(enemies) do
                if entity:IsAlive() then
                    table.insert(returnEnemies, entity)
                end
            end
        end
        return returnEnemies
    end,
}