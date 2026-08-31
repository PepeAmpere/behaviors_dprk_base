return {
    DPRKteam = {
        description = 'An extension to InfantryTeam.',
        parents = {
            { btset = 'standard_behaviors', class = 'InfantryTeam' },
        },
        
        Match = function ()
            if
                type(self) == "GroupBrain"
            then
                return true
                
            end        
            return false
        end,

        behaviors = {
            DefendMudrak = {
                description = 'DefendMudrak',
				tree = 'DefendMudrak',
                parameters = {},
            }
        },
    },
}