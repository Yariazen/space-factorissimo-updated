require("prototypes.factory")
require("prototypes.recipe")
require("prototypes.technology")
require("prototypes.tile")

-- Custom Inputs
input_prototype("factory-rotate", "R")
input_prototype("factory-increase", "SHIFT + R")
input_prototype("factory-decrease", "CONTROL + R")

-- Space Factory 1 TODO
--[[
factory_prototype("space-factory-1",
    { r = 0.55, g = 0.7, b = 0.8 }, tier_1_factory())
]]

-- Space Factory 2 TODO
--[[
factory_prototype("space-factory-2",
    { r = 0.55, g = 0.7, b = 0.8 }, tier_2_factory)
]]

-- Space Factory 3
local spaceFactory3 = "space-factory-3"
factory_prototype(spaceFactory3,
    { r = 0.55, g = 0.7, b = 0.8 }, tier_3_factory)
recipe_prototype(spaceFactory3, {{"se-space-platform-plating", 5000}, {"steel-plate", 2000}, {"substation", 100}})

-- Space GravFactory 1 TODO
--[[
local gravFactory1 = "grav-factory-1"
factory_prototype("grav-Factory-1",
    { r = 0.55, g = 0.7, b = 0.8 }, tier_2_factory)
]]

-- Space GravFactory 2 TODO
--[[
factory_prototype("space-factory-3",
    { r = 0.55, g = 0.7, b = 0.8 }, tier_3_factory)
]]