-- MV compressor

minetest.register_craft({
	output = 'technic:mv_compressor',
	recipe = {
		{'technic:stainless_steel_ingot', 'technic:lv_compressor',  'technic:stainless_steel_ingot'},
		{'default:glass',              'technic:mv_transformer', 'default:glass'},
		{'technic:stainless_steel_ingot', 'technic:mv_cable0',      'technic:stainless_steel_ingot'},
	}
})

technic.register_compressor({tier = "MV", demand = {800, 600, 400}, speed = 2, upgrade = 1, tube = 1})
