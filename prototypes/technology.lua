local S = "__space-factorissimo-updated__"

function technology_prototype(name, prerequisites, effects, unit)
	data:extend ({
		{
			type = "technology",
			name = name,
			icon = S .. "/graphics/technology/" .. name .. ".png",
			icon_size = 128,
			prerequisites = prerequisites,
			effects = effects,
			unit = unit,
			order = "a-c"
		}
	})
end

function tier_1_architecture(name, prerequisites, ingredients)
	technology_prototype(name:sub(0, #name - 1) .. "architecture-t1", prerequisites,
		{ { type = "unlock-recipe", recipe = name } }, { count = 200, ingredients = ingredients, time = 30
	})
end

function tier_2_architecture(name, prerequisites, ingredients)
	technology_prototype(name:sub(0, #name - 1) .. "architecture-t2", prerequisites,
		{ { type = "unlock-recipe", recipe = name } }, { count = 600, ingredients = ingredients, time = 45
	})
end

function tier_3_architecture(name, prerequisites, ingredients)
	technology_prototype(name:sub(0, #name - 1) .. "architecture-t3", prerequisites,
		{ { type = "unlock-recipe", recipe = name } }, { count = 2000, ingredients = ingredients, time = 60
	})
end