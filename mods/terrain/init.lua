-- Minetest 0.4 mod: terrain
-- See README.txt for licensing and other information.

-- The API documentation in here was moved into game_api.txt

-- Load support for MT game translation.
local S = minetest.get_translator("terrain")

-- Definitions made by this mod that other mods can use too
terrain = {}

terrain.LIGHT_MAX = 14
terrain.get_translator = S

-- Check for engine features required by MTG
-- This provides clear error behaviour when MTG is newer than the installed engine
-- and avoids obscure, hard to debug runtime errors.
-- This section should be updated before release and older checks can be dropped
-- when newer ones are introduced.
if ItemStack("").add_wear_by_uses == nil then
	error("\nThis version of Minetest Game is incompatible with your engine version "..
		"(which is too old). You should download a version of Minetest Game that "..
		"matches the installed engine version.\n")
end

-- GUI related stuff
minetest.register_on_joinplayer(function(player)
	-- Set formspec prepend
	local formspec = [[
			bgcolor[#080808BB;true]
			listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF] ]]
	local name = player:get_player_name()
	local info = minetest.get_player_information(name)
	if info.formspec_version > 1 then
		formspec = formspec .. "background9[5,5;1,1;gui_formbg.png;true;10]"
	else
		formspec = formspec .. "background[5,5;1,1;gui_formbg.png;true]"
	end
	player:set_formspec_prepend(formspec)

	-- Set hotbar textures
	player:hud_set_hotbar_image("gui_hotbar.png")
	player:hud_set_hotbar_selected_image("gui_hotbar_selected.png")
end)

function terrain.get_hotbar_bg(x,y)
	local out = ""
	for i=0,7,1 do
		out = out .."image["..x+i..","..y..";1,1;gui_hb_bg.png]"
	end
	return out
end

terrain.gui_survival_form = "size[8,8.5]"..
			"list[current_player;main;0,4.25;8,1;]"..
			"list[current_player;main;0,5.5;8,3;8]"..
			"list[current_player;craft;1.75,0.5;3,3;]"..
			"list[current_player;craftpreview;5.75,1.5;1,1;]"..
			"image[4.75,1.5;1,1;gui_furnace_arrow_bg.png^[transformR270]"..
			"listring[current_player;main]"..
			"listring[current_player;craft]"..
			terrain.get_hotbar_bg(0,4.25)

-- Load files
local terrain_path = minetest.get_modpath("terrain")

--dofile(terrain_path.."/functions.lua")
--dofile(terrain_path.."/trees.lua")
dofile(terrain_path.."/nodes.lua")
--dofile(terrain_path.."/chests.lua")
--dofile(terrain_path.."/furnace.lua")
--dofile(terrain_path.."/torch.lua")
--dofile(terrain_path.."/tools.lua")
--dofile(terrain_path.."/item_entity.lua")
--dofile(terrain_path.."/craftitems.lua")
--dofile(terrain_path.."/crafting.lua")
dofile(terrain_path.."/mapgen.lua")
