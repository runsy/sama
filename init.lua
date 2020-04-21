--
-- sama
-- License:GPLv3
--

local modname = "sama"
local modpath = minetest.get_modpath(modname)
local mg_name = minetest.get_mapgen_setting("mg_name")

-- internationalization boilerplate
local S = minetest.get_translator(minetest.get_current_modname())

--
-- Samantha Mod
--

sama = {}

-- Load the files
assert(loadfile(modpath .. "/samantha.lua"))
assert(loadfile(modpath .. "/behaviour.lua"))
assert(loadfile(modpath .. "/brain.lua"))
assert(loadfile(modpath .. "/api/api.lua"))(modpath, modname, S )
