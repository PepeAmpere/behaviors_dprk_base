return {
    SwitchRoles = function(updateData, idle, move)
        for _, soldierData in ipairs(updateData) do
            if soldierData.state == idle then
                soldierData.state = move
            elseif soldierData.state == move then
                soldierData.hasDoneOrder = false
                soldierData.state = idle
            end
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

    CheckMoveOrderUpdate = function(updateData, finishedEntity, idle, move)
        for _, soldierData in ipairs(updateData) do
            if soldierData.unit == finishedEntity then
                soldierData.hasDoneOrder = true
                DebugLog("Unit at index " .. soldierData.index .. " marked as DONE.")
                break
            end
        end

        local orderReady = IsMoveOrderReady(updateData, move)
        if (orderReady) then
            SwitchRoles(updateData, idle, move)
        end
        return orderReady
    end
}
