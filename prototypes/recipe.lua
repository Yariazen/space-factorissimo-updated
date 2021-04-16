local easy_recipes = settings.startup["Factorissimo2-easy-recipes"].value

local multiplier = easy_recipes and 1 or 10

data:extend({
	-- Factory buildings
	{
		type = "recipe",
		name = "space-factory-3",
		enabled = false,
		energy_required = 60,
		ingredients = {{"se-space-platform-plating", 500 * multiplier}, {"steel-plate", 200 * multiplier}, {"substation", 10 * multiplier}},
		result = "space-factory-3"
	},
});
