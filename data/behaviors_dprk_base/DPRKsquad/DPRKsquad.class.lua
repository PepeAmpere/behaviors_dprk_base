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
            AlternatingRetreatAutonomous = {
                description = 'AlternatingRetreat with reaction',
				tree = 'AutonomousBehavior',
                parameters = {},
            },
            SuccessiveAdvance = {
                description = 'SuccesiveAdvance',
				tree = 'SuccesiveAdvance',
                parameters = {},
            },
            SuccessiveAdvanceAutonomous = {
                description = 'SuccesiveAdvance with reaction',
				tree = 'AutonomousBehavior',
                parameters = {},
            },
            AlternatingAdvance = {
                description = 'Squad Alternating Advance',
                tree = 'AlternatingAdvance',
                parameters = {},
            },
            AlternatingAdvanceAutonomous = {
                description = 'Squad Alternating Advance with reaction',
                tree = 'AutonomousBehavior',
                parameters = {},
            },
            AnalysisTest = {
                description = 'Behavior for testing squad level analysis',
                tree = 'AnalysisTest',
                parameters = {},
            },
            AlternatingAdvancePopek = {
                description = 'New Squad Alternating Advance',
                tree = 'AlternatingAdvancePopek',
                parameters = {},
            },
            AlternatingIdleMudrak = {
                description = 'New Squad Alternating Idle',
                tree = 'AlternatingIdleMudrak',
                parameters = {},
            },
            TestPathVolume = {
                description = 'Test Path Volume',
                tree = 'TestPathVolume',
                parameters = {},
            },
            TestGetPath = {
                description = 'Test Get Path',
                tree = 'TestGetPath',
                parameters = {},
            }
        },
    },
}