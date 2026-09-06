return {
    SetFree = function(teamStates, index)
        teamStates[index + 1] = "FREE"
    end,

    SetInCombat = function(teamStates, index)
        DebugLog(tostring(index + 1))
        teamStates[index + 1] = "IN_COMBAT"
    end,

    SetDead = function(teamStates, index)
        teamStates[index + 1] = "DEAD"
    end
}