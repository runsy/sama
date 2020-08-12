minetest.register_on_joinplayer(function(player)
	local menu = player:hud_add({
		hud_elem_type = "image",
		position = {x = 0, y = 1},
		text = "sama_hud_main.png",
		scale = { x = 3, y = 3},
		alignment = { x = 1, y = -1},
		offset = {x = 0, y = -5},
	})
end)
