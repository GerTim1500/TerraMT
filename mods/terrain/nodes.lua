-- mods/terrain/nodes.lua

-- support for MT game translation.
local S = terrain.get_translator

--
-- Stone
--

minetest.register_node("terrain:stone", {
	description = S("Stone"),
	tiles = {"default_stone.png"},
	groups = {cracky = 3, stone = 1},
	drop = "terrain:cobble",
	legacy_mineral = true,
})


--
-- Soft / Non-Stone
--

minetest.register_node("terrain:dirt", {
	description = S("Dirt"),
	tiles = {"terra_dirt.png"},
	groups = {crumbly = 3, soil = 1},
})

minetest.register_node("terrain:dirt_with_grass", {
	description = S("Grass Block"),
	tiles = {"terra_grass.png", "terra_dirt.png",
		{name = "terra_dirt.png^terra_grass_side.png",
			tileable_vertical = false}},
	groups = {crumbly = 3, soil = 1, spreading_dirt_type = 1},
	drop = "terrain:dirt",
})