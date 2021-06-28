local F = "__Factorissimo2__"
local S = "__space-factorissimo-updated__"

require("circuit-connector-sprites")

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

-- Pipe connectors

local function space_factory_pipe(name, height, order) 
	data:extend({
		{
			type = "item",
			name = name,
			icon = S.."/graphics/icon/"..name..".png",
			icon_size = 32,
			flags = {},
			subgroup = "factorissimo2",
			order = order,
			place_result = name,
			stack_size = 50,
		},
		{
			type = "storage-tank",
			name = name,
			icon = S.."/graphics/icon/"..name..".png",
			icon_size = 32,
			flags = {"placeable-player", "player-creation"},
			minable = {mining_time = 1, result = name},
			max_health = 80,
			corpse = "small-remnants",
			collision_box = {{-0.0625, -0.0625}, {0.0625, 0.0625}},
			collision_mask = {
				"water-tile",
				"ground-tile",
				"item-layer",
				"object-layer",
				"player-layer",
			},
			se_allow_in_space = true,
			selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
			fluid_box =
			{
				base_area = 25,
				base_level = height,
				pipe_covers = pipecoverspictures(),
				pipe_connections = {
					{ position = {0, -1} },
					{ position = {0, 1} },
				},
			},
			window_bounding_box = {{0,0}, {0,0}},
			pictures = {
				picture = {
					sheet = {
						filename = S.."/graphics/utility/"..name..".png",
						priority = "extra-high",
						frames = 2,
						width = 50,
						height = 50,
						shift = {0.15625, -0.0625}
					}
				},
				fluid_background = blank(),
				window_background = blank(),
				flow_sprite = blank(),
				gas_flow = ablank()
			},
			flow_length_in_ticks = 1,
			vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
			working_sound = {
				sound = {
						filename = "__base__/sound/storage-tank.ogg",
						volume = 0.1
				},
				apparent_volume = 0.1,
				max_sounds_per_type = 3
			},
			circuit_wire_connection_points = circuit_connector_definitions["storage-tank"].points,
			circuit_connector_sprites = circuit_connector_definitions["storage-tank"].sprites,
			circuit_wire_max_distance = 0
		},
	})
end

space_factory_pipe("space-factory-input-pipe", -1, "b-a")
space_factory_pipe("space-factory-output-pipe", 1, "b-b")

data:extend({
	-- Factory requester chest
	{
		type = "item",
		name = "space-factory-requester-chest",
		icon = F.."/graphics/icon/factory-requester-chest.png",
		icon_size = 32,
		flags = {},
		subgroup = "factorissimo2",
		order = "d-a",
		place_result = "space-factory-requester-chest",
		stack_size = 1,
	},
	{
		type = "logistic-container",
		name = "space-factory-requester-chest",
		icon = F.."/graphics/icon/factory-requester-chest.png",
		icon_size = 32,
		flags = {"placeable-player", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "space-factory-requester-chest"},
		max_health = 450,
		corpse = "small-remnants",
		collision_box = {{-0.35, -0.35}, {0.35, 0.35}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		se_allow_in_space = true,
		inventory_size = 48,
		logistic_slots_count = 24,
		logistic_mode = "requester",
		open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
		close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
		vehicle_impact_sound =	{ filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
		picture =
		{
			filename = F.."/graphics/utility/factory-requester-chest.png",
			priority = "extra-high",
			width = 38,
			height = 32,
			shift = {0.09375, 0}
		},
		circuit_wire_connection_point = circuit_connector_definitions["chest"].points,
		circuit_connector_sprites = circuit_connector_definitions["chest"].sprites,
		circuit_wire_max_distance = 7.5,
	},
})