local F = "__Factorissimo2__"
local S = "__space-factorissimo-updated__"

--[[
	Missing Assets opptional
	-/graphics/tile/sfw4_1.png
	-/graphics/tile/sfw5_1.png
	-/graphics/tile/sfw4_1.png
	-/graphics/tile/sfw5_1.png
]]

alien_biomes_priority_tiles = alien_biomes_priority_tiles or {}

-- COLLISION MASKS
-- We need to be able to refer to these layers in control.lua so getting a sequential layer from the collision mask util is not ideal
-- remember to update control.lua setup_collision_layers()
 -- global scope
collision_mask_util_extended = require("collision-mask-util-extended/data/collision-mask-util-extended")

-- All space tiles have this
space_collision_layer = collision_mask_util_extended.get_make_named_collision_mask("space-tile")

local function make_tile(tinfo)
	table.insert(alien_biomes_priority_tiles, tinfo.name)
	data:extend({
		{
			type = "tile",
			name = tinfo.name,
			needs_correction = false,
			collision_mask = tinfo.collision_mask,
			layer = tinfo.layer or 50,
			variants = {
				main = tinfo.pictures,
				inner_corner = { picture = F.."/graphics/nothing.png", count = 0 },
				outer_corner = { picture = F.."/graphics/nothing.png", count = 0 },
				side = { picture = F.."/graphics/nothing.png", count = 0 },
				u_transition = { picture = F.."/graphics/nothing.png", count = 0 },
				o_transition = { picture = F.."/graphics/nothing.png", count = 0 },
			},
			walking_speed_modifier = 1.3,
			walking_sound = {
				{
					filename = "__base__/sound/walking/concrete-01.ogg",
					volume = 1.2
				},
				{
					filename = "__base__/sound/walking/concrete-02.ogg",
					volume = 1.2
				},
				{
					filename = "__base__/sound/walking/concrete-03.ogg",
					volume = 1.2
				},
				{
					filename = "__base__/sound/walking/concrete-04.ogg",
					volume = 1.2
				}
			},
			map_color = tinfo.map_color or {r = 1},
		},
	})
end

local function wall_mask()
	return {
		"ground-tile",
		"water-tile",
		"resource-layer",
		"floor-layer",
		"item-layer",
		"object-layer",
		"player-layer",
		"doodad-layer"
	}
end

local function edge_mask()
	return {
		"ground-tile",
		"water-tile",
		"resource-layer",
		"floor-layer",
		"item-layer",
		"object-layer",
		"doodad-layer"
	}
end

local function floor_mask()
	return {
		space_collision_layer
	}
end

local function pictures_out()
	return {
		{
			picture = "__base__/graphics/terrain/out-of-map.png",
			count = 1,
			size = 1
		},
	}
end

local function pictures_ff(i)
	local x = ""
	--local x = i
	-- x = i to make the concrete floor inside factories slightly tinted
	-- Looks kinda ugly though with the current hues
	return {
		{
			picture = S.."/graphics/tile/ff"..x.."_1.png",
			count = 16,
			size = 1
		},
		{
			picture = S.."/graphics/tile/ff"..x.."_2.png",
			count = 4,
			size = 2,
			probability = 0.39,
		},
		{
			picture = S.."/graphics/tile/ff"..x.."_4.png",
			count = 4,
			size = 4,
			probability = 1,
		},
	}
end

local function pictures_fp(i)
	return {
		{
			picture = S.."/graphics/tile/sfw"..i.."_1.png",
			count = 16,
			size = 1
		},
	}
end

local function pictures_fw(i)
	return {
		{
			picture = S.."/graphics/tile/sfw"..i.."_1.png",
			count = 16,
			size = 1
		},
	}
end

make_tile{
	name = "out-of-space-factory",
	collision_mask = wall_mask(),
	layer = 70,
	pictures = pictures_out(),
	map_color = {r=0,g=0,b=0},
}

local function sf3fc() return {r=100,g=120,b=120} end
local function sf3wc() return {r=80,g=190,b=190} end

-- Space Factory 3

make_tile{
	name = "space-factory-floor-3",
	collision_mask = floor_mask(),
	layer = 30,
	pictures = pictures_ff(3),
	map_color = sf3fc(),
}
make_tile{
	name = "space-factory-entrance-3",
	collision_mask = edge_mask(),
	layer = 30,
	pictures = pictures_ff(3),
	map_color = sf3fc(),
}
make_tile{
	name = "space-factory-pattern-3",
	collision_mask = floor_mask(),
	layer = 30,
	pictures = pictures_fp(3),
	map_color = sf3wc(),
}
make_tile{
	name = "space-factory-wall-3",
	collision_mask = edge_mask(),
	layer = 70,
	pictures = pictures_fw(3),
	map_color = sf3wc(),
}

--[[
-- Space Factory 4
make_tile{
	name = "space-factory-floor-4",
	collision_mask = floor_mask(),
	layer = 30,
	pictures = pictures_ff(3),
	map_color = sf3fc(),
}
make_tile{
	name = "space-factory-entrance-4",
	collision_mask = edge_mask(),
	layer = 30,
	pictures = pictures_ff(3),
	map_color = sf3fc(),
}
make_tile{
	name = "space-factory-pattern-4",
	collision_mask = floor_mask(),
	layer = 30,
	pictures = pictures_fp(3),
	map_color = sf3wc(),
}
make_tile{
	name = "space-factory-wall-4",
	collision_mask = edge_mask(),
	layer = 70,
	pictures = pictures_fw(3),
	map_color = sf3wc(),
}

-- Space Factory 5
make_tile{
	name = "space-factory-floor-5",
	collision_mask = floor_mask(),
	layer = 30,
	pictures = pictures_ff(3),
	map_color = sf3fc(),
}
make_tile{
	name = "space-factory-entrance-5",
	collision_mask = edge_mask(),
	layer = 30,
	pictures = pictures_ff(3),
	map_color = sf3fc(),
}
make_tile{
	name = "space-factory-pattern-5",
	collision_mask = floor_mask(),
	layer = 30,
	pictures = pictures_fp(3),
	map_color = sf3wc(),
}
make_tile{
	name = "space-factory-wall-5",
	collision_mask = edge_mask(),
	layer = 70,
	pictures = pictures_fw(3),
	map_color = sf3wc(),
}
]]
