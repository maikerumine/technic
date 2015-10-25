-- MV grinder

minetest.register_craft({
	output = 'technic:mv_grinder',
	recipe = {
		{'technic:stainless_steel_ingot', 'technic:lv_grinder',     'technic:stainless_steel_ingot'},
		{'default:glass',         'technic:mv_transformer', 'default:glass'},
		{'technic:stainless_steel_ingot', 'technic:mv_cable0',      'technic:stainless_steel_ingot'},
	}
})

technic.register_grinder({tier="MV", demand={600, 450, 300}, speed=2, upgrade=1, tube=1})
