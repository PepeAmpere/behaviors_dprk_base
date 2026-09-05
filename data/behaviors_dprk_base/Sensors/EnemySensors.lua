return {
    GetEnemyNearby = function(unit, radius)
        local pos = unit:GetPosition()
        local enemies = GetEntitiesInArea( Circle(unit:GetPosition(), radius), { enemyOf = unit })

        if #enemies > 0 and enemies[1]:IsAlive() and enemies[1]:Valid() then
            return enemies[1]
        end
        return nil
    end
}
