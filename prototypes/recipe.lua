function recipe_prototype(name, ingredients)
	data:extend ({
		{
			type = "recipe",
			name = name,
			enabled = false,
			energy_required = 60,
			ingredients = ingredients,
			result = name
		}
	})
end