
local S = technic.getter

technic.register_recipe_type("grinding", S("Grinding"))

function technic.register_grinder_recipe(data)
	data.time = data.time or 3
	technic.register_recipe("grinding", data)
end

local recipes = {
	-- Dusts
	{"default:coal_lump",       "technic:coal_dust 2"},
	{"default:copper_lump",     "technic:copper_dust 2"},
	{"default:desert_stone",    "default:desert_sand"},
	{"default:gold_lump",       "technic:gold_dust 2"},
	{"default:iron_lump",       "technic:wrought_iron_dust 2"},
	{"technic:chromium_lump",   "technic:chromium_dust 2"},
	{"technic:zinc_lump",       "technic:zinc_dust 2"},
	
	-- Other
	{"default:cobble",          "default:gravel"},
	{"default:gravel",          "default:dirt"},
	{"default:stone",           "default:sand"},
}

if minetest.get_modpath("moreores") then
	table.insert(recipes, {"moreores:mithril_lump",   "technic:mithril_dust 2"})
	table.insert(recipes, {"moreores:silver_lump",    "technic:silver_dust 2"})
	table.insert(recipes, {"moreores:tin_lump",       "technic:tin_dust 2"})
end

if minetest.get_modpath("gloopores") or minetest.get_modpath("glooptest") then
	table.insert(recipes, {"gloopores:alatro_lump",   "technic:alatro_dust 2"})
	table.insert(recipes, {"gloopores:kalite_lump",   "technic:kalite_dust 2"})
	table.insert(recipes, {"gloopores:arol_lump",     "technic:arol_dust 2"})
	table.insert(recipes, {"gloopores:talinite_lump", "technic:talinite_dust 2"})
	table.insert(recipes, {"gloopores:akalin_lump",   "technic:akalin_dust 2"})
end

if minetest.get_modpath("homedecor") then
	table.insert(recipes, {"home_decor:brass_ingot", "technic:brass_dust 1"})
end

for _, data in pairs(recipes) do
	technic.register_grinder_recipe({input = {data[1]}, output = data[2]})
end

local function register_dust(name, ingot)
	local lname = string.lower(name)
	lname = string.gsub(lname, ' ', '_')
	minetest.register_craftitem("technic:"..lname.."_dust", {
		description = S("%s Dust"):format(S(name)),
		inventory_image = "technic_"..lname.."_dust.png",
		on_place_on_ground = minetest.craftitem_place_item,
	})
	if ingot then
		minetest.register_craft({
			type = "cooking",
			recipe = "technic:"..lname.."_dust",
			output = ingot,
		})
		technic.register_grinder_recipe({ input = {ingot}, output = "technic:"..lname.."_dust 1" })
	end
end

-- Sorted alphibeticaly
register_dust("Brass",           "technic:brass_ingot")
register_dust("Bronze",          "default:bronze_ingot")
register_dust("Carbon Steel",    "technic:carbon_steel_ingot")
register_dust("Cast Iron",       "technic:cast_iron_ingot")
register_dust("Chromium",        "technic:chromium_ingot")
register_dust("Coal",            nil)
register_dust("Copper",          "default:copper_ingot")
register_dust("Gold",            "default:gold_ingot")
register_dust("Mithril",         "moreores:mithril_ingot")
register_dust("Silver",          "moreores:silver_ingot")
register_dust("Stainless Steel", "technic:stainless_steel_ingot")
register_dust("Tin",             "moreores:tin_ingot")
register_dust("Wrought Iron",    "technic:wrought_iron_ingot")
register_dust("Zinc",            "technic:zinc_ingot")
if minetest.get_modpath("gloopores") or minetest.get_modpath("glooptest") then
	register_dust("Akalin",          "glooptest:akalin_ingot")
	register_dust("Alatro",          "glooptest:alatro_ingot")
	register_dust("Arol",            "glooptest:arol_ingot")
	register_dust("Kalite",          nil)
	register_dust("Talinite",        "glooptest:talinite_ingot")
end

minetest.register_craft({
	type = "fuel",
	recipe = "technic:coal_dust",
	burntime = 50,
})

