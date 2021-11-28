local F = "__Factorissimo2__";
local S = "__space-factorissimo-updated__"

require("circuit-connector-sprites")

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