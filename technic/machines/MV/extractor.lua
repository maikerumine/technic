-- MV extractor

minetest.register_craft({
	output = 'technic:mv_extractor',
	recipe = {
		{'technic:stainless_steel_ingot', 'technic:lv_extractor',   'technic:stainless_steel_ingot'},
		{'default:glass',              'technic:mv_transformer', 'default:glass'},
		{'technic:stainless_steel_ingot', 'technic:mv_cable0',      'technic:stainless_steel_ingot'},
	}
})

technic.register_extractor({tier = "MV", demand = {800, 600, 400}, speed = 2, upgrade = 1, tube = 1})
