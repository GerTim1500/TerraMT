minetest.register_alias('mapgen_stone', 'tmt_nodes:stone')


minetest.register_biome({
	name = "purity_forest",
	node_top = "tmt_nodes:dirt_with_grass",
	depth_top = 1,
	node_filler = "tmt_nodes:dirt",
	depth_filler = 9,
	node_riverbed = "tmt_nodes:dirt",
	depth_riverbed = 10,
	y_max = 31000,
	y_min = 4,
        node_dungeon = "tmt_nodes:wood",
	heat_point = 50,
	humidity_point = 50
})

minetest.register_biome({
	name = "purity_beach",
	node_filler = "tmt_nodes:sand",
	depth_filler = 10,
	node_riverbed = "tmt_nodes:sand",
	depth_riverbed = 10,
	y_max = 3,
	y_min = -100,
        node_dungeon = "tmt_nodes:wood",
	heat_point = 50,
	humidity_point = 50
})
