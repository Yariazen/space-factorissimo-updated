require("scripts.utility")

local F = '__factorissimo-2-notnotmelon__'
local S = "__space-factorissimo-updated__"

alien_biomes_priority_tiles = alien_biomes_priority_tiles or {}

local interior_tile = collision_mask_util_extended.get_make_named_collision_mask("interior-tile")
local space_tile = collision_mask_util_extended.get_make_named_collision_mask("space-tile")

function make_tile(tinfo)
	table.insert(alien_biomes_priority_tiles, tinfo.name)
	data:extend {
		{
			type = "tile",
			name = tinfo.name,
			needs_correction = false,
			collision_mask = tinfo.collision_mask,
			layer = tinfo.layer or 50,
			variants = {
				main = tinfo.pictures,
				inner_corner = { picture = F .. "/graphics/nothing.png", count = 0 },
				outer_corner = { picture = F .. "/graphics/nothing.png", count = 0 },
				side = { picture = F .. "/graphics/nothing.png", count = 0 },
				u_transition = { picture = F .. "/graphics/nothing.png", count = 0 },
				o_transition = { picture = F .. "/graphics/nothing.png", count = 0 },
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
			map_color = tinfo.map_color or { r = 1 },
			pollution_absorption_per_second = 0.0006
		},
	}
end

local function floor_mask()
	return {
		interior_tile,
		space_tile
	}
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

local function sf3fc() return { r = 100, g = 120, b = 120 } end

local function pictures_out()
	return {
		{
			picture = "__base__/graphics/terrain/out-of-map.png",
			count = 1,
			size = 1
		},
	}
end

local function pictures_sff()
	return {
		{
			picture = S .. "/graphics/tile/sff_1.png",
			count = 16,
			size = 1
		},
		{
			picture = S .. "/graphics/tile/sff_2.png",
			count = 4,
			size = 2,
			probability = 0.39,
		},
		{
			picture = S .. "/graphics/tile/sff_4.png",
			count = 4,
			size = 4,
			probability = 1,
		},
	}
end

local function pictures_fp(i)
	return {
		{
			picture = S .. '/graphics/tile/sft_' .. i .. '.png',
			count = 16,
			size = 1
		},
	}
end

local function pictures_fw(i)
	return {
		{
			picture = S .. '/graphics/tile/sft_' .. i .. '.png',
			count = 16,
			size = 1
		},
	}
end

make_tile {
	name = "out-of-space-factory",
	collision_mask = wall_mask(),
	layer = 70,
	pictures = pictures_out(),
	map_color = { r = 0, g = 0, b = 0 },
}

make_tile {
	name = "space-factory-floor",
	collision_mask = floor_mask(),
	layer = 30,
	pictures = pictures_sff(),
	map_color = sf3fc(),
}

make_tile {
	name = "space-factory-entrance",
	collision_mask = edge_mask(),
	layer = 30,
	pictures = pictures_sff(),
	map_color = sf3fc(),
}

function tile_prototype(name, map_color)
	make_tile({
		name = name:sub(0, #name - 1) .. "pattern" .. name:sub(#name - 1, #name),
		collision_mask = floor_mask(),
		layer = 30,
		pictures = pictures_fp(name:sub(#name, #name + 1)),
		map_color = map_color,
	})
	make_tile({
		name = name:sub(0, #name - 1) .. "wall" .. name:sub(#name - 1, #name),
		collision_mask = edge_mask(),
		layer = 30,
		pictures = pictures_fw(name:sub(#name, #name + 1)),
		map_color = map_color,
	})
end
