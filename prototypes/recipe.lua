local easy_recipes = settings.startup["Factorissimo2-easy-recipes"].value

local multiplier = easy_recipes and 1 or 10

--[[
	Modify
	-ingredients
]]
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
	{
		type = "recipe",
		name = "space-gravFactory-3",
		enabled = false,
		energy_required = 60,
		ingredients = {{"se-space-platform-scaffold", 450 * multiplier}, {"steel-plate", 200 * multiplier}, {"concrete", 50 * multiplier}, {"substation", 10 * multiplier}},
		result = "space-gravFactory-3"
	},
	--[[
	,{
		type = "recipe",
		name = "space-factory-4",
		enabled = false,
		energy_required = 60,
		ingredients = {{"se-space-platform-plating", 5500 * multiplier}, {"steel-plate", 200 * multiplier}, {"substation", 10 * multiplier}},
		result = "space-factory-4"
	},
	{
		type = "recipe",
		name = "space-factory-5",
		enabled = false,
		energy_required = 60,
		ingredients = {{"se-space-platform-plating", 126500 * multiplier}, {"steel-plate", 200 * multiplier}, {"substation", 10 * multiplier}},
		result = "space-factory-5"
	},
	]]
	{
		type = "recipe",
		name = "space-factory-input-pipe",
		enabled = false,
		energy_required = 1,
		ingredients = {{"se-space-pipe", 5}},
		result = "space-factory-input-pipe"
	},
	{
		type = "recipe",
		name = "space-factory-output-pipe",
		enabled = false,
		energy_required = 1,
		ingredients = {{"se-space-pipe", 5}},
		result = "space-factory-output-pipe"
	},
});
