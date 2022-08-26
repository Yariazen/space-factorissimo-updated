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
local spaceFactory1_map_color = { 0.5019607843137255, 0.0, 0.0 } --Maroon x800000
tier_1_factory(spaceFactory1, spaceFactory1_map_color)
tier_1_architecture(spaceFactory1,
    { "factory-architecture-t2", "se-space-platform-scaffold", "electric-energy-distribution-2" },
    {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "se-rocket-science-pack", 1 },
        { "space-science-pack", 1 }
    })
recipe_prototype(spaceFactory1,
    { { "se-space-platform-scaffold", 500 }, { "low-density-structure", 500 }, { "se-heat-shielding", 200 } })
tile_prototype(spaceFactory1, spaceFactory1_map_color)

-- Space Factory 2 TODO
--[[
factory_prototype("space-factory-2",
    { r = 0.55, g = 0.7, b = 0.8 }, tier_2_factory)
]]

-- Space Factory 3 TODO
--[[
local spaceFactory3 = "space-factory-3"
tier_3_factory(spaceFactory3, { r = 0.55, g = 0.7, b = 0.8 })
tier_3_architecture(spaceFactory3,
    { "factory-architecture-t3", "se-space-platform-plating", "electric-energy-distribution-2" },
    {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "se-rocket-science-pack", 1 },
        { "space-science-pack", 1 },
        { "production-science-pack", 1 }
    })
recipe_prototype(spaceFactory3, { { "se-space-platform-plating", 5000 }, { "steel-plate", 2000 }, { "substation", 100 } })
tile_prototype(spaceFactory3)
]]

-- Space GravFactory 1 TODO
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
