return {
    DPRKman = {
        description = 'An extension to Infantryman.',
        parents = {
            { btset = 'standard_behaviors', class = 'Infantryman' },
        },
        
        Match = function ()
            if
                type(self) == "EntityBrain"
            then
                return true
                
            end        
            return false
        end,

        behaviors = {
            Fire = {
                description = 'soldierFireAt',
				tree = 'soldierFireAt',
                parameters = {},
            },
            Move = {
                description = 'soldierMove',
				tree = 'soldierMove',
                parameters = {},
            }
        },
    },
}