local S = ...

sama.register_container("wardrove", {
	description = S("Wardrove"),
	mesh = "wardrove.obj",
	tiles = {
		"sama_wardrove.png",
	},
	sounds = default.node_sound_wood_defaults(),
	sound_open = "default_chest_open",
	sound_close = "default_chest_close",
	groups = {choppy = 2, oddly_breakable_by_hand = 2},
})
