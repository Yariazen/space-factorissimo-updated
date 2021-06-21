local F = "__Factorissimo2__"
local S = "__space-factorissimo-updated__"
local pf = "p-q-"
local easy_research = settings.startup["Factorissimo2-easy-research"].value

--[[
	Missing Assets
	-dimensions: icon_size = 128
	-/graphics/technology/space-factory-architecture-4.png
	-/graphics/technology/space-factory-architecture-5.png"

	Modify
	-prerequisites
	-count
	-ingredients
]]
data:extend({
	-- Factory buildings
	{
		type = "technology",
		name = "space-factory-architecture-t3",
		icon = S.."/graphics/technology/space-factory-architecture-3.png",
		icon_size = 128,
		prerequisites = {"factory-architecture-t3", "se-space-platform-plating", "electric-energy-distribution-2"},
		effects = {
			{type = "unlock-recipe",recipe = "space-factory-3"},
			{type = "unlock-recipe", recipe = "space-factory-input-pipe"},
			{type = "unlock-recipe", recipe = "space-factory-output-pipe"},
		},
		unit = {
			count = easy_research and 300 or 2000,
			ingredients = {{"automation-science-pack", 1},{"logistic-science-pack", 1},{"chemical-science-pack", 1},{"se-rocket-science-pack", 1},{"se-material-science-pack-1", 1}},
			time = 60
		},
		order = pf.."a-c",
	},
	{
		type = "technology",
		name = "space-gravFactory-architecture-t3",
		icon = S.."/graphics/technology/space-gravFactory-architecture-3.png",
		icon_size = 128,
		prerequisites = {"factory-architecture-t3", "se-space-platform-plating", "electric-energy-distribution-2"},
		effects = {
			{
				type = "unlock-recipe",
				recipe = "space-gravFactory-3",
			}
		},
		unit = {
			count = easy_research and 300 or 2000,
			ingredients = {{"automation-science-pack", 1},{"logistic-science-pack", 1},{"chemical-science-pack", 1},{"se-rocket-science-pack", 1},{"se-material-science-pack-1", 1}},
			time = 60
		},
		order = pf.."a-c",
	}
	--[[,

	{
		type = "technology",
		name = "space-factory-architecture-t4",
		icon = S.."/graphics/technology/space-factory-architecture-4.png",
		icon_size = 128,
		prerequisites = {"space-factory-architecture-t3", "se-space-platform-plating", "electric-energy-distribution-2"},
		effects = {
			{
				type = "unlock-recipe",
				recipe = "space-factory-4",
			}
		},
		unit = {
			count = easy_research and 300 or 2000,
			ingredients = {{"automation-science-pack", 1},{"logistic-science-pack", 1},{"chemical-science-pack", 1},{"se-rocket-science-pack", 1},{"se-material-science-pack-1", 1}},
			time = 75
		},
		order = pf.."a-c",
	},

	{
		type = "technology",
		name = "space-factory-architecture-t5",
		icon = S.."/graphics/technology/space-factory-architecture-5.png",
		icon_size = 128,
		prerequisites = {"space-factory-architecture-t4", "se-space-platform-plating", "electric-energy-distribution-2"},
		effects = {
			{
				type = "unlock-recipe",
				recipe = "space-factory-5",
			}
		},
		unit = {
			count = easy_research and 300 or 2000,
			ingredients = {{"automation-science-pack", 1},{"logistic-science-pack", 1},{"chemical-science-pack", 1},{"se-rocket-science-pack", 1},{"se-material-science-pack-1", 1}},
			time = 90
		},
		order = pf.."a-c",
	}
	]]
})