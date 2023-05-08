minetest.register_node("tmt_nodes:stone", {
	description = ("Stone"),
	tiles = {"tmt_nodes_stone.png"},
	groups = {cracky = 1}
})

minetest.register_node("tmt_nodes:sand", {
	description = ("Sand"),
	tiles = {"tmt_nodes_sand.png"},
	groups = {crumbly = 1, falling_node = 1}
})

minetest.register_node("tmt_nodes:dirt", {
	description = ("Dirt"),
	tiles = {"tmt_nodes_dirt.png"},
	groups = {crumbly = 1}
})

minetest.register_node("tmt_nodes:dirt_with_grass", {
	description = ("Dirt with Grass"),
	tiles = {"tmt_nodes_grass.png", "tmt_nodes_dirt.png",
		{name = "tmt_nodes_grass_side.png",
			tileable_vertical = false}},
	groups = {crumbly = 3},
	drop = "tmt_nodes:dirt"
})

minetest.register_node("tmt_nodes:wood", {
	description = ("Wood"),
	tiles = {"tmt_nodes_wood.png"},
	groups = {choppy = 1}
})