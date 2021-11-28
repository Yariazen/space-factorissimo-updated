local F = "__Factorissimo2__"
local S = "__space-factorissimo-updated__"

require("circuit-connector-sprites")

local power_batch_size = settings.startup["Factorissimo2-power-batching"].value or 1

local function cwc0c()
	return {shadow = {red = {0,0},green = {0,0},copper = {0,0}}, wire = {red = {0,0},green = {0,0},copper = {0,0}}}
end

local function blank()
	return {
		filename = F.."/graphics/nothing.png",
		priority = "high",
		width = 1,
		height = 1,
	}
end

local function ablank()
	return {
		filename = F.."/graphics/nothing.png",
		priority = "high",
		width = 1,
		height = 1,
		frame_count = 1,
	}
end

local function ps()
	return {
		filename = F.."/graphics/component/pipe-connection-south.png",
		priority = "extra-high",
		width = 44,
		height = 32
	}
end

local function blankpipepictures()
	return {
		straight_vertical_single = blank(),
		straight_vertical = blank(),
		straight_vertical_window = blank(),
		straight_horizontal_window = blank(),
		straight_horizontal = blank(),
		corner_up_right = blank(),
		corner_up_left = blank(),
		corner_down_right = blank(),
		corner_down_left = blank(),
		t_up = blank(),
		t_down = blank(),
		t_right = blank(),
		t_left = blank(),
		cross = blank(),
		ending_up = blank(),
		ending_down = blank(),
		ending_right = blank(),
		ending_left = blank(),
		horizontal_window_background = blank(),
		vertical_window_background = blank(),
		fluid_background = blank(),
		low_temperature_flow = blank(),
		middle_temperature_flow = blank(),
		high_temperature_flow = blank(),
		gas_flow = ablank(),
	}
end

local function southpipepictures()
	return {
		straight_vertical_single = blank(),
		straight_vertical = ps(),
		straight_vertical_window = ps(),
		straight_horizontal_window = blank(),
		straight_horizontal = blank(),
		corner_up_right = blank(),
		corner_up_left = blank(),
		corner_down_right = ps(),
		corner_down_left = ps(),
		t_up = blank(),
		t_down = ps(),
		t_right = ps(),
		t_left = ps(),
		cross = ps(),
		ending_up = blank(),
		ending_down = ps(),
		ending_right = blank(),
		ending_left = blank(),
		horizontal_window_background = blank(),
		vertical_window_background = blank(),
		fluid_background = blank(),
		low_temperature_flow = blank(),
		middle_temperature_flow = blank(),
		high_temperature_flow = blank(),
		gas_flow = ablank(),
	}
end

-- Factory power I/O

local VALID_POWER_TRANSFER_RATES = {1,2,5,10,20,50,100,200,500,1000,2000,5000,10000,20000,50000,100000} -- MW

local function create_energy_interfaces(size, passive_input, passive_output, icon)
	local j = size/2-0.3
	local input_priority = (passive_input and "tertiary") or "secondary-input"
	local output_priority = (passive_output and "tertiary") or "secondary-output"
	for _, transfer_rate in pairs(VALID_POWER_TRANSFER_RATES) do
		local buffer_size = transfer_rate*16667*power_batch_size
		data:extend({
			{
				type = "electric-energy-interface",
				name = "factory-power-input-" .. size .. "-" .. transfer_rate,
				localised_name = {"entity-name.factory-power-input-" .. size},
				icon = icon,
				icon_size = 32,
				flags = {"not-on-map"},
				minable = nil,
				max_health = 1,
				selectable_in_game = false,
				energy_source = {
					type = "electric",
					usage_priority = input_priority,
					input_flow_limit = transfer_rate .. "MW",
					--output_flow_limit = "0MW",
					buffer_capacity = buffer_size .. "J",
					render_no_power_icon = false,
				},
				energy_usage = "0MW",
				energy_production = "0MW",
				selection_box = {{-j,-j},{j,j}},
				collision_box = {{-j,-j},{j,j}},
				collision_mask = {},
			},
			{
				type = "electric-energy-interface",
				name = "factory-power-output-" .. size .. "-" .. transfer_rate,
				localised_name = {"entity-name.factory-power-output-" .. size},
				icon = icon,
				icon_size = 32,
				flags = {"not-on-map"},
				minable = nil,
				max_health = 1,
				selectable_in_game = false,
				energy_source = {
					type = "electric",
					usage_priority = output_priority,
					--input_flow_limit = "0MW",
					output_flow_limit = transfer_rate .. "MW",
					buffer_capacity = buffer_size .. "J",
					render_no_power_icon = false,
				},
				energy_usage = "0MW",
				energy_production = "0MW",
				selection_box = {{-j,-j},{j,j}},
				collision_box = {{-j,-j},{j,j}},
				collision_mask = {},
			},
		})
	end
end

create_energy_interfaces(16,false,false,S.."/graphics/icon/space-factory-3.png")