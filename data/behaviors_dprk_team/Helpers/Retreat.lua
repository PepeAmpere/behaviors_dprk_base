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

    GetFirstSoldier = function(updateData, role)
        local firstSoldier = nil
        for i, data in ipairs(updateData) do
            if data.state == role then
                firstSoldier = data.unit
                break
            end
        end
        return firstSoldier
    end,

    IsTeamCloseToTargetPosition = function(reachThreshold, targetPos, updateData, deadState)
        for i, data in ipairs(updateData) do
            if data.state ~= deadState then
                local pos = data.unit:GetPosition()
                local distance = pos:Distance(targetPos)
                if distance > reachThreshold then
                    return false
                end
            end
        end
        DebugLog("IsTeamCloseToTargetPosition returned true")
        return true
    end,

    GetEnemyNearby = function(unit, radius)
        local pos = unit:GetPosition()

        local enemies = unit:GetVisibleEnemies(radius)

        if #enemies > 0 and enemies[1]:IsAlive() and enemies[1]:Valid() then
            return enemies[1]
        end
        return nil
    end,

    IsRoleDead = function(updateData, role)
        if updateData == nil then
            return false
        end

        local isDead = true
        for _, soldierData in ipairs(updateData) do
            if soldierData.state == role then
                isDead = false
                break
            end
        end
        return isDead
    end,
}
