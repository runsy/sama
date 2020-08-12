--
-- sama
-- License:GPLv3
--

local modname = "sama"
local modpath = minetest.get_modpath(modname)
-- internationalization boilerplate
local S = minetest.get_translator(minetest.get_current_modname())

--
-- Samantha Mod
--

sama = {}

-- Load the files
assert(loadfile(modpath .. "/api/api.lua"))(modpath, modname, S)
assert(loadfile(modpath .. "/samantha.lua"))()
assert(loadfile(modpath .. "/behaviour.lua"))()
assert(loadfile(modpath .. "/brain.lua"))()
assert(loadfile(modpath .. "/hud.lua"))()
assert(loadfile(modpath .. "/formspec.lua"))()
assert(loadfile(modpath .. "/on_rightclick.lua"))()
--assert(loadfile(modpath .. "/wardrove.lua"))(S)
