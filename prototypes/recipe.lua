function recipe_prototype(name, category, ingredients)
	data:extend({
		{
			type = "recipe",
			name = name,
			enabled = false,
			energy_required = 60,
			category_id = category,
			ingredients = ingredients,
			result = name
		}
	})
end
