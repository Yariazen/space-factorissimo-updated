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