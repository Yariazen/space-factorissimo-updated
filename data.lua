require("prototypes.factory")
require("prototypes.recipe")
require("prototypes.technology")
require("prototypes.tile")
require("prototypes.input")

-- Custom Inputs
input_prototype("factory-rotate", "R")
input_prototype("factory-increase", "SHIFT + R")
input_prototype("factory-decrease", "CONTROL + R")

-- Space Factory 1
local spaceFactory1 = "space-factory-1"
local spaceFactory1_map_color = --[[ Maroon #800000 ]] { 0.5019607843137255, 0.0, 0.0 }
tier_1_factory(spaceFactory1, spaceFactory1_map_color)
tier_1_architecture(spaceFactory1,
    { "se-space-platform-scaffold", "electric-energy-distribution-2", "factory-architecture-t2" },
    {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "se-rocket-science-pack", 1 },
        { "space-science-pack", 1 }
    })
tile_prototype(spaceFactory1, spaceFactory1_map_color)
recipe_prototype(spaceFactory1, "space-crafting",
    { { "se-space-platform-scaffold", 500 }, { "se-heat-shielding", 500 }, { "substation", 10 } })

-- Space Factory 2
local spaceFactory2 = "space-factory-2"
local spaceFactory2_map_color = --[[ Dark Cyan #008B8B ]] { 0.0, 0.5450980392156862, 0.5450980392156862 }
tier_2_factory(spaceFactory2, spaceFactory2_map_color)
tier_2_architecture(spaceFactory2,
    { "space-factory-architecture-t1", "factory-architecture-t3" },
    {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "se-rocket-science-pack", 1 },
        { "space-science-pack", 1 },
        { "production-science-pack", 1 }
    })
space_tiles(spaceFactory2, spaceFactory2_map_color)
recipe_prototype(spaceFactory2, "space-manufacturing",
    { { "se-space-platform-scaffold", 1000 }, { "se-heat-shielding", 1000 }, { "substation", 50 } })

-- Space Factory 3
local spaceFactory3 = "space-factory-3"
local spaceFactory3_map_color = --[[ Dark Khaki #BDB76B ]] { 0.7411764705882353, 0.7176470588235294, 0.4196078431372549 }
tier_3_factory(spaceFactory3, spaceFactory3_map_color)
tier_3_architecture(spaceFactory3,
    { "space-factory-architecture-t2", "se-space-platform-plating" },
    {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "se-rocket-science-pack", 1 },
        { "space-science-pack", 1 },
        { "production-science-pack", 1 },
        { "se-material-science-pack-1", 1 }
    })
space_tiles(spaceFactory3, spaceFactory3_map_color)
recipe_prototype(spaceFactory3, "space-manufacturing",
    { { "se-space-platform-plating", 5000 }, { "se-heat-shielding", 2000 }, { "substation", 100 } })

-- Space GravFactory 1
--[[
local gravFactory1 = "gravity-factory-1"
factory_prototype("grav-Factory-1",
    { r = 0.55, g = 0.7, b = 0.8 }, tier_2_factory)
]]

-- Space GravFactory 2 TODO
--[[
factory_prototype("space-factory-3",
    { r = 0.55, g = 0.7, b = 0.8 }, tier_3_factory)
]]
