return {
    Suppressor = {
        description = 'An extension to Infantryman. The one who suppresses with fire',
        parents = {
            { btset = 'standard_behaviors', class = 'Infantryman' },
            -- More parent classes can be added. The 'btset' field is optional and defaults to the current project.
        },
        
        Match = function ()
        -- This class matches the same objects as the parent class does.
        -- You can add a condition matching only subset of soldiers.
            if
                type(self) == "EntityBrain"
            then
                local soldier = self
                    if 
                        soldier:Valid() and 
                        soldier:IsAlive() and
                        soldier:GetType() == EntityType.Person
                    then
                        return true
                    end
            end        
            return false
        end,

        behaviors = {
            Suppress = {
                description = 'Suppress ',
                tree = 'H_Suppress_run_own_pathfind',
                parameters = {},
            },
            Advance = {
                description = 'Suppress basic',
                tree = 'H_Suppress',
                parameters = {
                    target = nil
                },
            }
        },
    },
}