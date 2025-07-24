return {
    FindPathsExtremes = function(paths)
        local shortestPathIndex = 0
        local shortestPathLength = math.huge
        local longestPathIndex = 0
        local longestPathLength = -math.huge

        for p=1, #paths do
            local newPath = paths[p]
            local newCandidateLenght = newPath:Length()
            if newCandidateLenght < shortestPathLength then
                shortestPathIndex = p
                shortestPathLength = newCandidateLenght
            end
            if newCandidateLenght > longestPathLength then
                longestPathIndex = p
                longestPathLength = newCandidateLenght
            end
        end

        return shortestPathIndex, shortestPathLength, longestPathIndex, longestPathLength
    end,
}