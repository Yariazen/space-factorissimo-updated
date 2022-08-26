require("scripts.layout")

local factory_layouts = {}

-- Space Factory 1
local spaceFactory1 = "space-factory-1"
table.insert(factory_layouts, function(...) remote.call("factorissimo", "add_layout", tier_1_layout(spaceFactory1)) end)

-- Space Factory 3
--[[
local spaceFactory3 = "space-factory-3"
table.insert(factory_layouts, function(...) remote.call('factorissimo', 'add_layout', tier_3_layout(spaceFactory3)) end)
]]

local add_layouts = function()
	for _, v in pairs(factory_layouts) do
		v()
	end
end

script.on_init(add_layouts)
script.on_configuration_changed(add_layouts)
