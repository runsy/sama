
-- Samantha Definitions
local samantha = {}


minetest.register_entity("sama:samantha" ,{
	name = "Samantha",
	drops = {
	},
	rotate = petz.settings.rotate,
	physical = true,
	stepheight = 0.1,	--EVIL!
	collide_with_objects = true,
	collisionbox = collisionbox,
	visual = petz.settings.visual,
	mesh = mesh,
	textures = textures,
	visual_size = visual_size,
	static_save = true,
	get_staticdata = mobkit.statfunc,
	-- api props
	springiness= 0,
	buoyancy = 0.5, -- portion of hitbox submerged
	max_speed = 2,
	jump_height = 1.5,
	view_range = 10,
	lung_capacity = 10, -- seconds
	max_hp = 8,

	attack={range=0.5, damage_groups={fleshy=3}},

	animation = {
		walk={range={x=1, y=12}, speed=25, loop=true},
		run={range={x=13, y=25}, speed=25, loop=true},
		stand={
			{range={x=26, y=46}, speed=5, loop=true},
			{range={x=47, y=59}, speed=5, loop=true},
			{range={x=82, y=94}, speed=5, loop=true},
		},
	},

	sounds = {
	},

	logic = sama.brain,

	on_activate = function(self, staticdata, dtime_s) --on_activate, required
		mobkit.actfunc(self, staticdata, dtime_s)
	end,

	on_punch = function(self, puncher, time_from_last_punch, tool_capabilities, dir)
	end,

	on_rightclick = function(self, clicker)

	end,

    on_step = function(self, dtime)
		mobkit.stepfunc(self, dtime) -- required
		--petz.on_step(self, dtime)
	end,

	on_die = sama.on_die(self, pos)
})

--petz:register_egg("petz:lamb", S("Lamb"), "petz_spawnegg_lamb.png", true)
