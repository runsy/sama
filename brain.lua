function sama.brain(self)

	local pos = self.object:get_pos()

	mobkit.vitals(self)

	if self.hp <= 0 then
		sama.on_die(self)
		return
	end

	sama.check_ground_suffocation(self, pos)

	if mobkit.timer(self, 1) then

		local prty = mobkit.get_queue_priority(self)

		if prty < 90 then
			sama.env_damage(self, pos, 90) --enviromental damage: lava, fire...
		end

		if prty < 80 then
			if self.isinliquid then
				mobkit.hq_liquid_recovery(self, 80)
				return
			end
		end

		local player = mobkit.get_nearby_player(self)

		--Follow Behaviour
		if prty < 50 then
			if sama.bh_start_follow(self, pos, player, 50) == true then
				return
			end
		end

		if prty == 54 then
			if petz.bh_stop_follow(self, player) == true then
				return
			end
		end

		--Roam default
		if mobkit.is_queue_empty_high(self) and self.status == "" then
			mobkit.hq_wanderfly(self, 0)
		end

	end
end
