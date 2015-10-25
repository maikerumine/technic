
local worldpath = minetest.get_worldpath()

technic.config = Settings(worldpath.."/technic.conf")

local conf_table = technic.config:to_table()

local defaults = {
	enable_mining_drill = "false",
	enable_mining_laser = "false",
	enable_flashlight = "false",
	enable_rubber_tree_generation = "true",
	enable_marble_generation = "true",
	enable_granite_generation = "true",
	enable_wind_mill = "true",
	enable_corium_griefing = "true",
}

for k, v in pairs(defaults) do
	if conf_table[k] == nil then
		technic.config:set(k, v)
	end
end

