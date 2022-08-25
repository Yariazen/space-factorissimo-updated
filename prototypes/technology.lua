local S = "__space-factorissimo-updated__"

local function tier_1_architecture(ingredients)
	return {
		count = 5000,
		ingredients = ingredients,
		time = 60
	}
end

function tier_2_architecture(ingredients)
	return {
		count = 5000,
		ingredients = ingredients,
		time = 60
	}
end

function tier_3_architecture(ingredients)
	return {
		count = 5000,
		ingredients = ingredients,
		time = 60
	}
end

function technology_prototype(name, prerequisites, effects, unit)
	data:extend {
		{
			type = "technology",
			name = name,
			icon = S .. "/graphics/technology/" .. ".png",
			icon_size = 128,
			prerequisites = prerequisites,
			effects = effects,
			unit = unit,
			order = "a-c"
		}
	}
end
