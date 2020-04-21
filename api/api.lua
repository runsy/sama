local modpath, modname, S = ...

local creative_mode = minetest.settings:get_bool("creative_mode")

assert(loadfile(modpath .. "/api/api_on_die.lua"))(S)

