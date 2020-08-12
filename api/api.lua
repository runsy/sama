local modpath, modname, S = ...

local creative_mode = minetest.settings:get_bool("creative_mode")

function sama:get_pointed_thing()

end

assert(loadfile(modpath .. "/api/api_on_die.lua"))(S)
assert(loadfile(modpath .. "/api/api_container.lua"))(S)

