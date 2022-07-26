local S = "__space-factorissimo-updated__"
local F = '__factorissimo-2-notnotmelon__';

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

-- Space Factory 1
data:extend {
    {
        type = "storage-tank",
        name = "space-factory-1",
        localised_name = {"entity-name.space-factory-1"},
        icon = S.."/graphics/icon/space-factory-1.png",
        icon_size = 32,
        flags = {"player-creation"},
        mineable = {mining_time = 5, result = "space-factory-1", count = 1},
        max_health = 5000,
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
                        filename = S.."/graphics/factory/space-factory-1-shadow.png",
                        width = 704,
                        height = 608,
                        shift = {2, -0.09375},
                        draw_as_shadow = true
                    },
                    {
                        filename = S.."/graphics/factory/space-factory-1.png",
                        width = 704,
                        height = 608,
                        shift = {2, -0.09375},
                    }
                }
            },
            fluid_background = blank(),
            window_background = blank(),
            flow_sprite = blank(),
            gas_flow = ablank()
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
        is_military_target = true
    },
    {
        type = "item-with-tags",
        name = "space-factory-1",
        localised_name = {"entity-name.space-factory-1"},
        icon = S.."/graphics/icon/space-factory-1.png",
        icon_size = 32,
        subgroup = "factorissimo2",
		order = "a-c",
		place_result = "space-factory-1",
		stack_size = 1
    }
}

-- Space GravFactory
data:extend {
    {
        type = "storage-tank",
        name = "space-gravFactory",
        localised_name = {"entity-name.space-gravFactory"},
        icon = S.."/graphics/icon/space-gravFactory.png",
        icon_size = 32,
        flags = {"player-creation"},
        mineable = {mining_time = 5, result = "space-gravFactory", count = 1},
        max_health = 5000,
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
                        filename = S.."/graphics/factory/space-gravFactory-shadow.png",
                        width = 704,
                        height = 608,
                        shift = {2, -0.09375},
                        draw_as_shadow = true
                    },
                    {
                        filename = S.."/graphics/factory/space-gravFactory.png",
                        width = 704,
                        height = 608,
                        shift = {2, -0.09375},
                    }
                }
            },
            fluid_background = blank(),
            window_background = blank(),
            flow_sprite = blank(),
            gas_flow = ablank()
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
        is_military_target = true
    },
    {
        type = "item-with-tags",
        name = "space-gravFactory",
        localised_name = {"entity-name.space-gravFactory"},
        icon = S.."/graphics/icon/space-gravFactory.png",
        icon_size = 32,
        subgroup = "factorissimo2",
		order = "a-c",
		place_result = "space-gravFactory",
		stack_size = 1
    }
}