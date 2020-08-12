sama.register_container("wardrove", {
	description = S("Wardrove"),
	tiles = {
		"sama_christmas_container_top.png",
		"sama_christmas_container_top.png",
		"sama_christmas_container_side.png",
		"sama_christmas_container_side.png",
		"sama_christmas_container_front.png",
		"sama_christmas_container_inside.png"
	},
	stack_max = 1,
	sounds = default.node_sound_wood_defaults(),
	sound_open = "default_chest_open",
	sound_close = "default_chest_close",
	groups = {choppy = 2, oddly_breakable_by_hand = 2},
})

minetest.register_craft({
	type = "shaped",
	output = "sama:christmas_present",
	recipe = {
		{"default:paper", "default:paper", "default:paper"},
		{"dye:red", "default:container", "dye:yellow"},
		{"default:paper", "default:paper", "default:paper"},
	}
})
