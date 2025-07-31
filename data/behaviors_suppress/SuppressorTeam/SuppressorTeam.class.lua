return {
    SuppressorTeam = {
        description = 'An extension to InfantryTeam. The one who suppresses with fire',
        parents = {
            { btset = 'standard_behaviors', class = 'InfantryTeam' },
            -- More parent classes can be added. The 'btset' field is optional and defaults to the current project.
        },
        
        Match = function ()
        -- This class matches the same objects as the parent class does.
        -- You can add a condition matching only subset of soldiers.
            if
                type(self) == "GroupBrain" and self:GetEntityCount()>0
                        --( bb.name ~= "SuppressorSquad" )
            then
                return true
            end        
            return false
        end,

        behaviors = {
            SuppressAutonomous = {
                description = 'SuppressAutonomous',
                tree = 'H_SuppressTeam_run_own_pathfind',
                parameters = {},
            }
        },
    },
}