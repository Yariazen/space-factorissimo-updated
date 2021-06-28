local F = "__Factorissimo2__";
local S = "__space-factorissimo-updated__"

require("circuit-connector-sprites")

--[[
	Missing Assets
	-dimentions: 	width 	= 832
					height 	= 736
	-/graphics/icon/space-factory-4.png
	-/graphics/factory/space-factory-4-shadow.png
	-/graphics/factory/space-factory-4.png

	-dimentions: 	width 	= 960
					height 	= 864
	-/graphics/icon/space-factory-5.png
	-/graphics/factory/space-factory-5-shadow.png
	-/graphics/factory/space-factory-5.png
]]

local function cwc0()
	return {shadow = {red = {0,0},green = {0,0}}, wire = {red = {0,0},green = {0,0}}}
end
local function cc0()
	return get_circuit_connector_sprites({0,0},nil,1)
end
local function blank()
	return {
		filename = F.."/graphics/nothing.png",
		priority = "high",
		width = 1,
		height = 1,
	}
end
local function ablank()
	return {
		filename = F.."/graphics/nothing.png",
		priority = "high",
		width = 1,
		height = 1,
		frame_count = 1,
	}
end

local space_gravFactory_3 = function(suffix, localised_suffix, result_suffix, visible, count)
	local name = "space-gravFactory-3" .. suffix
	local localised_name = {"entity-name.space-gravFactory-3" .. localised_suffix}
	local result_name = "space-gravFactory-3" .. result_suffix
	local item_flags
	if visible then item_flags = {} else item_flags = {"hidden"} end
	return {
		{
			type = "storage-tank",
			name = name,
			localised_name = localised_name,
			icon = S.."/graphics/icon/space-gravFactory-3.png",
			icon_size = 32,
			flags = {"player-creation"},
			minable = {mining_time = 5, result = result_name, count = count},
			max_health = 5000,
			corpse = "big-remnants",
			collision_box = {{-7.8, -7.8}, {7.8, 7.8}},
			collision_mask = {
				"water-tile",
				"ground-tile",
				"item-layer",
				"object-layer",
				"player-layer",
				"moving-tile"
			},
			se_allow_in_space = true,
			selection_box = {{-7.8, -7.8}, {7.8, 7.8}},
			vehicle_impact_sound = { filename = "__base__/sound/car-stone-impact.ogg", volume = 1.0 },
			pictures = {
				picture = {
					layers = {
						{
							filename = S.."/graphics/factory/space-gravFactory-3-shadow.png",
							width = 704,
							height = 608,
							shift = {2, -0.09375},
							draw_as_shadow = true
						},
						{
							filename = S.."/graphics/factory/space-gravFactory-3.png",
							width = 704,
							height = 608,
							shift = {2, -0.09375},
						}
					}
				},
				fluid_background = blank(),
				window_background = blank(),
				flow_sprite = blank(),
				gas_flow = ablank(),
			},
			window_bounding_box = {{0,0},{0,0}},
			fluid_box = {
				base_area = 1,
				pipe_covers = pipecoverspictures(),
				pipe_connections = {},
			},
			flow_length_in_ticks = 1,
			circuit_wire_connection_points = circuit_connector_definitions["storage-tank"].points,
			circuit_connector_sprites = circuit_connector_definitions["storage-tank"].sprites,
			circuit_wire_max_distance = 0,
			map_color = {r = 0.55, g = 0.7, b = 0.8},
		},
		{
			type = "item",
			name = name,
			localised_name = localised_name,
			icon = S.."/graphics/icon/space-gravFactory-3.png",
			icon_size = 32,
			flags = item_flags,
			subgroup = "factorissimo2",
			order = "a-c",
			place_result = name,
			stack_size = 1
		}
	};
end

local space_factory_3 = function(suffix, localised_suffix, result_suffix, visible, count)
	local name = "space-factory-3" .. suffix
	local localised_name = {"entity-name.space-factory-3" .. localised_suffix}
	local result_name = "space-factory-3" .. result_suffix
	local item_flags
	if visible then item_flags = {} else item_flags = {"hidden"} end
	return {
		{
			type = "storage-tank",
			name = name,
			localised_name = localised_name,
			icon = S.."/graphics/icon/space-factory-3.png",
			icon_size = 32,
			flags = {"player-creation"},
			minable = {mining_time = 5, result = result_name, count = count},
			max_health = 5000,
			corpse = "big-remnants",
			collision_box = {{-7.8, -7.8}, {7.8, 7.8}},
			collision_mask = {
				"water-tile",
				"ground-tile",
				"item-layer",
				"object-layer",
				"player-layer",
			},
			se_allow_in_space = true,
			selection_box = {{-7.8, -7.8}, {7.8, 7.8}},
			vehicle_impact_sound = { filename = "__base__/sound/car-stone-impact.ogg", volume = 1.0 },
			pictures = {
				picture = {
					layers = {
						{
							filename = S.."/graphics/factory/space-factory-3-shadow.png",
							width = 704,
							height = 608,
							shift = {2, -0.09375},
							draw_as_shadow = true
						},
						{
							filename = S.."/graphics/factory/space-factory-3.png",
							width = 704,
							height = 608,
							shift = {2, -0.09375},
						}
					}
				},
				fluid_background = blank(),
				window_background = blank(),
				flow_sprite = blank(),
				gas_flow = ablank(),
			},
			window_bounding_box = {{0,0},{0,0}},
			fluid_box = {
				base_area = 1,
				pipe_covers = pipecoverspictures(),
				pipe_connections = {},
			},
			flow_length_in_ticks = 1,
			circuit_wire_connection_points = circuit_connector_definitions["storage-tank"].points,
			circuit_connector_sprites = circuit_connector_definitions["storage-tank"].sprites,
			circuit_wire_max_distance = 0,
			map_color = {r = 0.55, g = 0.7, b = 0.8},
		},
		{
			type = "item",
			name = name,
			localised_name = localised_name,
			icon = S.."/graphics/icon/space-factory-3.png",
			icon_size = 32,
			flags = item_flags,
			subgroup = "factorissimo2",
			order = "a-c",
			place_result = name,
			stack_size = 1
		}
	};
end

--Guide:
--collision_box		+=	2
--selection_box 	+= 	2
--image dimentions: height 	+= 128
--					width 	+= 128

--[[
local space_factory_4 = function(suffix, localised_suffix, result_suffix, visible, count)
	local name = "space-factory-4" .. suffix
	local localised_name = {"entity-name.space-factory-4" .. localised_suffix}
	local result_name = "space-factory-4" .. result_suffix
	local item_flags
	if visible then item_flags = {} else item_flags = {"hidden"} end
	return {
		{
			type = "storage-tank",
			name = name,
			localised_name = localised_name,
			icon = S.."/graphics/icon/space-factory-4.png",
			icon_size = 32,
			flags = {"player-creation"},
			minable = {mining_time = 5, result = result_name, count = count},
			max_health = 2000,
			corpse = "big-remnants",
			collision_box = {{-9.8, -9.8}, {9.8, 9.8}},
			selection_box = {{-9.8, -9.8}, {9.8, 9.8}},
			vehicle_impact_sound = { filename = "__base__/sound/car-stone-impact.ogg", volume = 1.0 },
			pictures = {
				picture = {
					layers = {
						{
							filename = S.."/graphics/factory/space-factory-4-shadow.png",
							width = 832,
							height = 736,
							shift = {2, 0},
							draw_as_shadow = true
						},
						{
							filename = S.."/graphics/factory/space-factory-4.png",
							width = 832,
							height = 736,
							shift = {2, 0},	
						}
					}
				},
				fluid_background = blank(),
				window_background = blank(),
				flow_sprite = blank(),
				gas_flow = ablank(),
			},
			window_bounding_box = {{0,0},{0,0}},
			fluid_box = {
				base_area = 1,
				pipe_covers = pipecoverspictures(),
				pipe_connections = {},
			},
			flow_length_in_ticks = 1,
			circuit_wire_connection_points = circuit_connector_definitions["storage-tank"].points,
			circuit_connector_sprites = circuit_connector_definitions["storage-tank"].sprites,
			circuit_wire_max_distance = 0,
			map_color = {r = 0.55, g = 0.7, b = 0.8},
		},
		{
			type = "item",
			name = name,
			localised_name = localised_name,
			icon = S.."/graphics/icon/space-factory-4.png",
			icon_size = 32,
			flags = item_flags,
			subgroup = "factorissimo2",
			order = "a-c",
			place_result = name,
			stack_size = 1
		}
	};
end
]]

--[[
local space_factory_5 = function(suffix, localised_suffix, result_suffix, visible, count)
	local name = "space-factory-5" .. suffix
	local localised_name = {"entity-name.space-factory-5" .. localised_suffix}
	local result_name = "space-factory-5" .. result_suffix
	local item_flags
	if visible then item_flags = {} else item_flags = {"hidden"} end
	return {
		{
			type = "storage-tank",
			name = name,
			localised_name = localised_name,
			icon = S.."/graphics/icon/space-factory-5.png",
			icon_size = 32,
			flags = {"player-creation"},
			minable = {mining_time = 5, result = result_name, count = count},
			max_health = 2000,
			corpse = "big-remnants",
			collision_box = {{-11.8, -11.8}, {11.8, 1.8}},
			selection_box = {{-11.8, -11.8}, {11.8, 11.8}},
			vehicle_impact_sound = { filename = "__base__/sound/car-stone-impact.ogg", volume = 1.0 },
			pictures = {
				picture = {
					layers = {
						{
							filename = S.."/graphics/factory/space-factory-5-shadow.png",
							width = 960,
							height = 864,
							shift = {2.5, 0},
							draw_as_shadow = true
						},
						{
							filename = S.."/graphics/factory/space-factory-5.png",
							width = 960,
							height = 864,
							shift = {2.5, 0},	
						}
					}
				},
				fluid_background = blank(),
				window_background = blank(),
				flow_sprite = blank(),
				gas_flow = ablank(),
			},
			window_bounding_box = {{0,0},{0,0}},
			fluid_box = {
				base_area = 1,
				pipe_covers = pipecoverspictures(),
				pipe_connections = {},
			},
			flow_length_in_ticks = 1,
			circuit_wire_connection_points = circuit_connector_definitions["storage-tank"].points,
			circuit_connector_sprites = circuit_connector_definitions["storage-tank"].sprites,
			circuit_wire_max_distance = 0,
			map_color = {r = 0.55, g = 0.7, b = 0.8},
		},
		{
			type = "item",
			name = name,
			localised_name = localised_name,
			icon = S.."/graphics/icon/space-factory-5.png",
			icon_size = 32,
			flags = item_flags,
			subgroup = "factorissimo2",
			order = "a-c",
			place_result = name,
			stack_size = 1
		}
	};
end
]]

data:extend(space_factory_3("", "", "", true, 0))
for i=10,99 do
	data:extend(space_factory_3("-s" .. i, "-s", "-s" .. i, false, 1))
end
data:extend(space_factory_3("-i", "-i", "", false, 1))

data:extend({
	{
		type = "simple-entity",
		name = "space-factory-3-overlay",
		flags = {"not-on-map"},
		minable = nil,
		max_health = 1,
		corpse = "big-remnants",
		collision_box = {{-7.8, -14.8}, {7.8, 0.8}},
		collision_mask = {},
		selection_box = {{-7.8, -14.8}, {7.8, 0.8}},
		selectable_in_game = false,
		picture = {
			layers = {
				{
					filename = S.."/graphics/factory/space-factory-3-shadow.png",
					width = 704,
					height = 608,
					shift = {2, -7.09375},
					draw_as_shadow = true
				},
				{
					filename = S.."/graphics/factory/space-factory-3.png",
					width = 704,
					height = 608,
					shift = {2, -7.09375},
				}
			}
		},
		render_layer = "object",
	}
})

data:extend(space_gravFactory_3("", "", "", true, 0))
for i=10,99 do
	data:extend(space_gravFactory_3("-s" .. i, "-s", "-s" .. i, false, 1))
end
data:extend(space_gravFactory_3("-i", "-i", "", false, 1))

data:extend({
	{
		type = "simple-entity",
		name = "space-gravFactory-3-overlay",
		flags = {"not-on-map"},
		minable = nil,
		max_health = 1,
		corpse = "big-remnants",
		collision_box = {{-7.8, -14.8}, {7.8, 0.8}},
		collision_mask = {},
		selection_box = {{-7.8, -14.8}, {7.8, 0.8}},
		selectable_in_game = false,
		picture = {
			layers = {
				{
					filename = S.."/graphics/factory/space-gravFactory-3-shadow.png",
					width = 704,
					height = 608,
					shift = {2, -7.09375},
					draw_as_shadow = true
				},
				{
					filename = S.."/graphics/factory/space-gravFactory-3.png",
					width = 704,
					height = 608,
					shift = {2, -7.09375},
				}
			}
		},
		render_layer = "object",
	}
})

--[[
collision_box = {{-=2, -=4}, {+=2, 0}}
selection_box = {{-=2, -=4}, {+=2, 0}}
]]
--[[
data:extend(space_factory_4("", "", "", true, 0))
for i=10,99 do
	data:extend(space_factory_4("-s" .. i, "-s", "-s" .. i, false, 1))
end
data:extend(space_factory_4("-i", "-i", "", false, 1))

data:extend({
	{
		type = "simple-entity",
		name = "space-factory-4-overlay",
		flags = {"not-on-map"},
		minable = nil,
		max_health = 1,
		corpse = "big-remnants",
		collision_box = {{-9.8, -18.8}, {9.8, 0.8}},
		collision_mask = {},
		selection_box = {{-9.8, -18.8}, {9.8, 0.8}},
		selectable_in_game = false,
		picture = {
			layers = {
				{
					filename = S.."/graphics/factory/space-factory-4-shadow.png",
					width = 832,
					height = 736,
					shift = {2, -9},
					draw_as_shadow = true
				},
				{
					filename = F.."/graphics/factory/space-factory-4.png",
					width = 832,
					height = 736,
					shift = {2, -9},
				}
			}
		},
		render_layer = "object",
	}
})
]]

--[[
data:extend(space_factory_5("", "", "", true, 0))
for i=10,99 do
	data:extend(space_factory_5("-s" .. i, "-s", "-s" .. i, false, 1))
end
data:extend(space_factory_5("-i", "-i", "", false, 1))

data:extend({
	{
		type = "simple-entity",
		name = "space-factory-5-overlay",
		flags = {"not-on-map"},
		minable = nil,
		max_health = 1,
		corpse = "big-remnants",
		collision_box = {{-11.8, -22.8}, {11.8, 0.8}},
		collision_mask = {},
		selection_box = {{-11.8, -22.8}, {11.8, 0.8}},
		selectable_in_game = false,
		picture = {
			layers = {
				{
					filename = S.."/graphics/factory/space-factory-5-shadow.png",
					width = 960,
					height = 864,
					shift = {2.5, -11},
					draw_as_shadow = true
				},
				{
					filename = F.."/graphics/factory/space-factory-5.png",
					width = 960,
					height = 864,
					shift = {2.5, -11},
				}
			}
		},
		render_layer = "object",
	}
})
]]