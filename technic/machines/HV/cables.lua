
minetest.register_craft({
	output = 'technic:hv_cable0 3',
	recipe = {
		{'default:paper', 'default:paper', 'default:paper'},
		{'technic:mv_cable0',          'technic:mv_cable0',          'technic:mv_cable0'},
		{'default:paper', 'default:paper', 'default:paper'},
	}
}) 

technic.register_cable("HV", 3/16)

