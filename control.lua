require("scripts.layout")

local factory_layouts = {}

-- Space Factory 3
local spaceFactory3 = "space-factory-3"
Populate_Info(spaceFactory3, tier_3_layout)
local spaceFactory3_layout = function() remote.call('factorissimo', 'add_layout', make_layout) end
table.insert(factory_layouts, spaceFactory3_layout)

local add_layouts = function()
	for _,v in pairs(factory_layouts) do
		v()
	end
end

script.on_init(add_layouts)

script.on_configuration_changed(add_layouts)