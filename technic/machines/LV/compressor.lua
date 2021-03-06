
minetest.register_alias("compressor", "technic:lv_compressor")

minetest.register_craft({
	output = 'technic:lv_compressor',
	recipe = {
		{'default:stone',		'technic:motor',		'default:stone'},
		{'default:water_flowing',		'technic:machine_casing',	'default:water_flowing'},
		{'technic:fine_silver_wire',	'technic:lv_cable0',		'technic:fine_silver_wire'},
	}
})

technic.register_compressor({tier = "LV", demand = {300}, speed = 1})
