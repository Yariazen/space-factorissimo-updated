require("prototypes.factory")
require("prototypes.recipe")
require("prototypes.technology")
require("prototypes.tile")

-- Space Factory 1
--[[
factory_prototype("space-factory-1",
    { r = 0.55, g = 0.7, b = 0.8 }, tier_1_factory())
]]

-- Space Factory 2
--[[
factory_prototype("space-factory-2",
    { r = 0.55, g = 0.7, b = 0.8 }, tier_2_factory)
]]

-- Space Factory 3
factory_prototype("space-factory-3",
    { r = 0.55, g = 0.7, b = 0.8 }, tier_3_factory)

-- Space GravFactory 1
factory_prototype("space-gravFactory-1",
    { r = 0.55, g = 0.7, b = 0.8 }, tier_2_factory)

-- Space GravFactory 2
--[[
factory_prototype("space-factory-3",
    { r = 0.55, g = 0.7, b = 0.8 }, tier_3_factory)
]]