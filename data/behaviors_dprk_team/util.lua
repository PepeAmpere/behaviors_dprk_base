return {
    util = {
        compare_did_change = function(old_array, new_array)
	        if (old_array == nil) ~= (new_array == nil) then
		        return true
	        end
	        if (#old_array) ~= (#new_array) then 
		        return true 
	        end
	        for i, old_member in ipairs(old_array) do
		        if old_member ~= new_array[i] then
			        return true
		        end
	        end
	        return false
        end,  
        get_tail = function(arr, start_idx) 
	        local ret = {}
	        if #arr >= start_idx then
		        for i=start_idx, (#arr) do
			        ret[(#ret) + 1] = arr[i]
		        end
	        end
	        return ret
        end,
        get_without = function(arr, to_omit)
	        local ret= {}
	        for i, soldier in ipairs(arr) do
		        if soldier ~= to_omit then
			        ret[(#ret) + 1] = soldier
		        end
	        end
            return ret
        end,
		append_all = function(target, to_append)
			for i, elem in ipairs(to_append) do
				target[(#target) + 1] = elem
			end
			return target
		end,
		find_idx = function(arr, to_find)
			for i, elem in ipairs(arr) do
				if elem == to_find then
					return i
				end
			end
			return -1
		end,
		get_neighbor_elem = function(arr, this_elem, offset)
			local idx = util.find_idx(arr, this_elem) + offset
			if idx >= 1 and idx <= (#arr) then return arr[idx] end
			return nil
		end, 
		get_neighbor_object = function(arr, this_elem, dir)
			local idx = util.find_idx(arr, this_elem) + dir
			while idx >= 1 and idx <= (#arr) do
				if util.is_valid_soldier(arr[idx]) then return arr[idx] end
				idx = idx + dir
			end
			return nil
		end,
		get_preceding_object = function(arr, this_elem) return util.get_neighbor_object(arr, this_elem, -1) end,
		get_successor_object = function(arr, this_elem) return util.get_neighbor_object(arr, this_elem, 1) end,
		concat_arrays = function(a, b)
			local ret = {}
			util.append_all(ret, a)
			util.append_all(ret, b)
			return ret
		end,
		is_valid_soldier = function(soldier)
			return soldier ~= nil and soldier:Valid() and soldier:IsAlive()
		end,
		get_alive_soldiers = function(this)
			--if type(this) ~= "Group" then
			--	this = this:GetParentGroup()
			--end
			local ret = {}
			for soldier in this:GetEntities() do
				if util.is_valid_soldier(soldier) then
					ret[(#ret) + 1] = soldier
				end
			end
			return ret
		end,
		is_subset_of = function(a , b)
			for value, flag in pairs(b) do
				if not a[value] then
					return false
				end
			end
			
			return true
		end,
		set_equals = function(a, b)
			return util.is_subset_of(a, b) and util.is_subset_of(b, a)
		end
    },
	messaging = {
		ORDER_DETAILS_MESSAGE_TYPE	= "OrderDetails", 
		NEW_ORDER_MESSAGE_TYPE		= "NewOrder",
		send_order_details = function(this, target_entity, messageData)
			DebugLog("Sending details " .. tostring(messageData.messageType) .. " to " .. tostring(target_entity))
			this:SendMessage(target_entity, messaging.ORDER_DETAILS_MESSAGE_TYPE, messageData)
		end
	},
	--- Move In Collumn
	mic = {
		PATH_SEGMENT_LENGTH = 30,
		PATH_SEGMENT_WIDTH = 50,
		PATH_SEGMENT_LENGTH_OVERSHOOT = 10,
		PREPARED_SEGMENTS_COUNT = 3,

		MAX_ALLOWED_SOLDIER_DISTANCE = 20,
		MAX_ALLOWED_SOLDIER_DISTANCE_FOR_SHOOTING = 12,
		SECONDS_BETWEEN_PATH_RECOMPUTES = 2.3177,

		MAX_PATH_LENGTH_TO_PURSUE_ENEMY = 450,
		MIN_PATH_LENGTH_TO_PURSUE_ENEMY = 3,
		ELIMINATE_SHOOTING_DURATION = 3,
		ELIMINATE_PURSUE_DURATION = 2,
        SHOOTING_TIMEOUT = 25,


		init_member = function(group_brain, member, soldiers_in_order, sighted_enemies)
			DebugLog("Initializing: '" .. tostring(member) .. "'")
			group_brain:SendMessage(member, messaging.NEW_ORDER_MESSAGE_TYPE, {
				orderName = "MoveInColumn",
				target = arg.orderData.target,
				groupBrain = group_brain,
				soldiersInOrder = soldiers_in_order,
				enemiesInSight = sighted_enemies
			})
		end,

		cannot_shoot_because_other_soldier = function(this_soldier, other_soldier)
			if other_soldier == nil then return false end

			if this_soldier:GetPosition():Distance(other_soldier:GetPosition()) > mic.MAX_ALLOWED_SOLDIER_DISTANCE_FOR_SHOOTING then return true end
			--if other_soldier:GetStance() == Stance.Crouched then return true end
			return false
		end,
		get_enemy_to_shoot = function(soldier, arg, loc)
			local ENEMY_FORGET_TIMEOUT = 200
			local previous_soldier = util.get_preceding_object(arg.orderData.soldiersInOrder, soldier)
			local next_soldier = util.get_successor_object(arg.orderData.soldiersInOrder, soldier)
			
			if mic.cannot_shoot_because_other_soldier(self, previous_soldier) or mic.cannot_shoot_because_other_soldier(self, next_soldier) then
				DebugLog(tostring(soldier) .. " failed shooting because other soldiers!")
				return nil
			end

			if loc.shootingTimer == nil then
				loc.shootingTimer = {}
			end

			if loc.enemiesInSight == nil then
				loc.enemiesInSight = {}
				return nil
			end

			local ret = nil
			for i, enemy in ipairs(loc.enemiesInSight) do
				local enemy_timer = loc.shootingTimer[tostring(enemy)]
				if soldier:IsVisible(enemy) and enemy:IsAlive() and (enemy_timer == nil or enemy_timer:CurrentValue() >= 0) then
					ret = enemy
					--DebugLog(tostring(soldier) .. " chosen enemy: " .. tostring(enemy))
					break
				end
				local timer_value = nil
				if enemy_timer then timer_value = enemy_timer:CurrentValue() end
				--DebugLog(tostring(soldier) .. " cannot see " .. tostring(enemy) .. ", timer: " .. tostring(timer_value))
			end
			

			local chosen_tag = tostring(ret)
			local chosen_timer = loc.shootingTimer[chosen_tag]
			if (chosen_timer == nil or chosen_timer:CurrentValue() == 0) then
				DebugLog(tostring(soldier) .. ".. Incrementing shoot counter for " .. chosen_tag .."!")
				loc.shootingTimer[chosen_tag] = TimedCounter():Incremented(2, mic.SHOOTING_TIMEOUT):Incremented(-1, ENEMY_FORGET_TIMEOUT)
			end

			return ret
		end,
		are_soldiers_too_far_from_each_other = function(soldiers)
			if #soldiers < 0 then return false end
			local lastSoldier = soldiers[1]
			for i, soldier in ipairs(soldiers) do
				if soldier:Valid() then
					if lastSoldier:Valid() then
						if lastSoldier:GetPosition():Distance(soldier:GetPosition()) > mic.MAX_ALLOWED_SOLDIER_DISTANCE then
							return true
						end
					end
					lastSoldier = soldier
				end
			end
			return false
		end,
		is_group_leader = function(soldier)
			return soldier == (soldier:GetParentGroup():GetLeader())
		end,
		create_path_segment = function(beginPos, endPos)
			local segmentDirection = (endPos - beginPos):Normalized()
			local segmentOrtho = (mic.PATH_SEGMENT_WIDTH*0.5) * segmentDirection:RightPerpendicularXY()
			beginPos = beginPos - (mic.PATH_SEGMENT_LENGTH_OVERSHOOT * segmentDirection)
			endPos = endPos + (mic.PATH_SEGMENT_LENGTH_OVERSHOOT * segmentDirection)
			return {beginPos - segmentOrtho, beginPos + segmentOrtho, endPos + segmentOrtho, endPos - segmentOrtho }
		end,
		get_path_segments = function(path)
			local precomputedSegments = {}

			local totalPathLength = path:Length()
			
			local pathStartPos = path:PositionAlongPath(0)
			local firstSegmentPos = path:PositionAlongPath(math.min(mic.PATH_SEGMENT_LENGTH, totalPathLength))
			precomputedSegments[(#precomputedSegments) + 1] = mic.create_path_segment(pathStartPos, pathStartPos - (firstSegmentPos - pathStartPos))

			for i=1,mic.PREPARED_SEGMENTS_COUNT do
				local beginDistance = (i - 1) * mic.PATH_SEGMENT_LENGTH
				local endDistance =  math.min((i* mic.PATH_SEGMENT_LENGTH), totalPathLength)
				if beginDistance >= totalPathLength then
					break
				end
				local beginPos = path:PositionAlongPath(beginDistance)
				local endPos = path:PositionAlongPath(endDistance)
				precomputedSegments[(#precomputedSegments) + 1] = mic.create_path_segment(beginPos, endPos)
			end

			return precomputedSegments
		end
	}

}