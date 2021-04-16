local F = "__Factorissimo2__"
local S = "__space-factorissimo-updated__"
local pf = "p-q-"
local easy_research = settings.startup["Factorissimo2-easy-research"].value


data:extend({
	-- Factory buildings
	{
		type = "technology",
		name = "space-factory-architecture-t3",
		icon = S.."/graphics/technology/space-factory-architecture-3.png",
		icon_size = 128,
		prerequisites = {"factory-architecture-t3", "se-space-platform-plating", "electric-energy-distribution-2"},
		effects = {
			{
				type = "unlock-recipe",
				recipe = "space-factory-3",
			}
		},
		unit = {
			count = easy_research and 300 or 2000,
			ingredients = {{"automation-science-pack", 1},{"logistic-science-pack", 1},{"chemical-science-pack", 1},{"se-rocket-science-pack", 1},{"se-material-science-pack-1", 1}},
			time = 60
		},
		order = pf.."a-c",
	}
})