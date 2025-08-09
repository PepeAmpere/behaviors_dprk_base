return {
    SwitchRoles = function(updateData, role1, role2)
        for _, soldierData in ipairs(updateData) do
            if soldierData.state == role1 then
                soldierData.state = role2
            elseif soldierData.state == role2 then
                soldierData.state = role1
            end
            soldierData.hasDoneOrder = false
        end
    end,
    

    IsMoveOrderReady = function(updateData, move)
        local orderReady = true
        for _, soldierData in ipairs(updateData) do
            if soldierData.state == move and not soldierData.hasDoneOrder then
                orderReady = false
                break
            end
        end
        return orderReady
    end,

    CheckMoveOrderUpdate = function(updateData, finishedEntity, cover, move)
        for _, soldierData in ipairs(updateData) do
            if soldierData.unit == finishedEntity then
                soldierData.hasDoneOrder = true
                DebugLog("Unit at index " .. soldierData.index .. " marked as DONE.")
                break
            end
        end

        local orderReady = IsMoveOrderReady(updateData, move)
        return orderReady
    end, 
    
    GenerateOffset = function(radius)
        local angle = math.random() * 2 * math.pi
        local r = math.random() * radius
        return {
            x = math.cos(angle) * r,
            y = 0,
            z = math.sin(angle) * r
        }
    end,

    GetFirstMoveSoldier = function(updateData, move)
        local firstSoldier = nil
        for i, data in ipairs(updateData) do
            if data.state == move and not data.hasDoneOrder then
                firstSoldier = data.unit
                break
            end
        end
        return firstSoldier
    end,

    IsTeamCloseToTargetPosition = function(reachThreshold, targetPos, updateData)
        for i, data in ipairs(updateData) do
    
            local pos = data.unit:GetPosition()
            local distance = pos:Distance(targetPos)
            if distance > reachThreshold then
                return false
            end
        end
        return true
    end

}
