return {
    DPRKsquad = {
        description = 'An extension to InfantrySquad.',
        parents = {
            { btset = 'standard_behaviors', class = 'InfantrySquad' },
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
            AlternatingRetreat = {
                description = 'AlternatingRetreat',
				tree = 'AlternatingRetreat',
                parameters = {},
            },
        },
    },
}