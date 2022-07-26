local north = defines.direction.north
local east = defines.direction.east
local south = defines.direction.south
local west = defines.direction.west

local make_connection = function(...) return remote.call('factorissimo', 'make_connection', ...) end

local spaceFactory1Layout = function() return {
	name = "space-factory-1",
	tier = 4,
	inside_size = 60,
	outside_size = 16,
	inside_door_x = 0,
	inside_door_y = 31,
	outside_door_x = 0,
	outside_door_y = 8,
	outside_energy_receiver_type = 'factory-power-input-16',
	inside_energy_x = -4,
	inside_energy_y = 32,
	overlay_name = 'space-factory-1-overlay',
	overlay_x = 0,
	overlay_y = 7,
	rectangles = {
		{
			x1 = -31, x2 = 31, y1 = -31, y2 = 31, tile = 'space-factory-wall-1'
		},
		{
			x1 = -30, x2 = 30, y1 = -30, y2 = 30, tile = 'space-factory-floor'
		},
		{
			x1 = -3, x2 = 3, y1 = 30, y2 = 33, tile = 'space-factory-wall-1'
		},
		{
			x1 = -2, x2 = 2, y1 = 30, y2 = 33, tile = 'space-factory-entrance'
		},
	},
	mosaics = {
		{	x1 = -6, x2 = 6, y1 = -4, y2 = 4, tile = 'space-factory-pattern-1',
			pattern = {
				' +++++   ++ ',
                '++++++  +++ ',
                '+++      ++ ',
                '+++++    ++ ',
                ' +++++   ++ ',
                '   +++   ++ ',
                '++++++   ++ ',
                '+++++   ++++',
			}
		},
	},
	connection_tile = 'space-factory-floor',
	connections = {
		w1 = make_connection('w1', -8.5,-5.5, -30.5,-24.5, west),
		w2 = make_connection('w2', -8.5,-4.5, -30.5,-20.5, west),
		w3 = make_connection('w3', -8.5,-3.5, -30.5,-9.5, west),
		w4 = make_connection('w4', -8.5,-2.5, -30.5,-5.5, west),
		w5 = make_connection('w5', -8.5,2.5, -30.5,5.5, west),
		w6 = make_connection('w6', -8.5,3.5, -30.5,9.5, west),
		w7 = make_connection('w7', -8.5,4.5, -30.5,20.5, west),
		w8 = make_connection('w8', -8.5,5.5, -30.5,24.5, west),

		e1 = make_connection('e1', 8.5,-5.5, 30.5,-24.5, east),
		e2 = make_connection('e2', 8.5,-4.5, 30.5,-20.5, east),
		e3 = make_connection('e3', 8.5,-3.5, 30.5,-9.5, east),
		e4 = make_connection('e4', 8.5,-2.5, 30.5,-5.5, east),
		e5 = make_connection('e5', 8.5,2.5, 30.5,5.5, east),
		e6 = make_connection('e6', 8.5,3.5, 30.5,9.5, east),
		e7 = make_connection('e7', 8.5,4.5, 30.5,20.5, east),
		e8 = make_connection('e8', 8.5,5.5, 30.5,24.5, east),

		n1 = make_connection('n1', -5.5,-8.5, -24.5,-30.5, north),
		n2 = make_connection('n2', -4.5,-8.5, -20.5,-30.5, north),
		n3 = make_connection('n3', -3.5,-8.5, -9.5,-30.5, north),
		n4 = make_connection('n4', -2.5,-8.5, -5.5,-30.5, north),
		n5 = make_connection('n5', 2.5,-8.5, 5.5,-30.5, north),
		n6 = make_connection('n6', 3.5,-8.5, 9.5,-30.5, north),
		n7 = make_connection('n7', 4.5,-8.5, 20.5,-30.5, north),
		n8 = make_connection('n8', 5.5,-8.5, 24.5,-30.5, north),

        s1 = make_connection('s1', -5.5,8.5, -24.5,30.5, south),
		s2 = make_connection('s2', -4.5,8.5, -20.5,30.5, south),
		s3 = make_connection('s3', -3.5,8.5, -9.5,30.5, south),
		s4 = make_connection('s4', -2.5,8.5, -5.5,30.5, south),
		s5 = make_connection('s5', 2.5,8.5, 5.5,30.5, south),
		s6 = make_connection('s6', 3.5,8.5, 9.5,30.5, south),
		s7 = make_connection('s7', 4.5,8.5, 20.5,30.5, south),
		s8 = make_connection('s8', 5.5,8.5, 24.5,30.5, south),
	},
	overlays = {
        outside_x = 0,
        outside_y = -1,
        outside_w = 16,
        outside_h = 14,
        inside_x = 3.5,
        inside_y = 31.5,
    }
} end

local add_spaceFactory1Layout = function() remote.call('factorissimo', 'add_layout', spaceFactory1Layout()) end

local spacegravFactoryLayout = function() return {
	name = "space-gravFactory",
	tier = 4,
	inside_size = 60,
	outside_size = 16,
	inside_door_x = 0,
	inside_door_y = 31,
	outside_door_x = 0,
	outside_door_y = 8,
	outside_energy_receiver_type = 'factory-power-input-16',
	inside_energy_x = -4,
	inside_energy_y = 32,
	overlay_name = 'space-factory-1-overlay',
	overlay_x = 0,
	overlay_y = 7,
	rectangles = {
		{
			x1 = -31, x2 = 31, y1 = -31, y2 = 31, tile = 'space-gravFactory-wall'
		},
		{
			x1 = -30, x2 = 30, y1 = -30, y2 = 30, tile = 'factory-floor'
		},
		{
			x1 = -3, x2 = 3, y1 = 30, y2 = 33, tile = 'space-gravFactory-wall'
		},
		{
			x1 = -2, x2 = 2, y1 = 30, y2 = 33, tile = 'factory-entrance'
		},
	},
	mosaics = {
		{	x1 = -6, x2 = 6, y1 = -4, y2 = 4, tile = 'space-gravFactory-pattern',
			pattern = {
				'  +++  ++++ ',
                '+++++ ++  ++',
                '++    ++  ++',
                '++ ++ ++ +++',
                '++ ++ +++ ++',
                '++  + ++  ++',
                '+++++ ++  ++',
                '  +++  ++++ ',
			}
		},
	},
	connection_tile = 'factory-floor',
	connections = {
		w1 = make_connection('w1', -8.5,-5.5, -30.5,-24.5, west),
		w2 = make_connection('w2', -8.5,-4.5, -30.5,-20.5, west),
		w3 = make_connection('w3', -8.5,-3.5, -30.5,-9.5, west),
		w4 = make_connection('w4', -8.5,-2.5, -30.5,-5.5, west),
		w5 = make_connection('w5', -8.5,2.5, -30.5,5.5, west),
		w6 = make_connection('w6', -8.5,3.5, -30.5,9.5, west),
		w7 = make_connection('w7', -8.5,4.5, -30.5,20.5, west),
		w8 = make_connection('w8', -8.5,5.5, -30.5,24.5, west),

		e1 = make_connection('e1', 8.5,-5.5, 30.5,-24.5, east),
		e2 = make_connection('e2', 8.5,-4.5, 30.5,-20.5, east),
		e3 = make_connection('e3', 8.5,-3.5, 30.5,-9.5, east),
		e4 = make_connection('e4', 8.5,-2.5, 30.5,-5.5, east),
		e5 = make_connection('e5', 8.5,2.5, 30.5,5.5, east),
		e6 = make_connection('e6', 8.5,3.5, 30.5,9.5, east),
		e7 = make_connection('e7', 8.5,4.5, 30.5,20.5, east),
		e8 = make_connection('e8', 8.5,5.5, 30.5,24.5, east),

		n1 = make_connection('n1', -5.5,-8.5, -24.5,-30.5, north),
		n2 = make_connection('n2', -4.5,-8.5, -20.5,-30.5, north),
		n3 = make_connection('n3', -3.5,-8.5, -9.5,-30.5, north),
		n4 = make_connection('n4', -2.5,-8.5, -5.5,-30.5, north),
		n5 = make_connection('n5', 2.5,-8.5, 5.5,-30.5, north),
		n6 = make_connection('n6', 3.5,-8.5, 9.5,-30.5, north),
		n7 = make_connection('n7', 4.5,-8.5, 20.5,-30.5, north),
		n8 = make_connection('n8', 5.5,-8.5, 24.5,-30.5, north),

        s1 = make_connection('s1', -5.5,8.5, -24.5,30.5, south),
		s2 = make_connection('s2', -4.5,8.5, -20.5,30.5, south),
		s3 = make_connection('s3', -3.5,8.5, -9.5,30.5, south),
		s4 = make_connection('s4', -2.5,8.5, -5.5,30.5, south),
		s5 = make_connection('s5', 2.5,8.5, 5.5,30.5, south),
		s6 = make_connection('s6', 3.5,8.5, 9.5,30.5, south),
		s7 = make_connection('s7', 4.5,8.5, 20.5,30.5, south),
		s8 = make_connection('s8', 5.5,8.5, 24.5,30.5, south),
	},
	overlays = {
        outside_x = 0,
        outside_y = -1,
        outside_w = 16,
        outside_h = 14,
        inside_x = 3.5,
        inside_y = 31.5,
    }
} end

local add_gravFactoryLayout = function() remote.call("factorissimo", "add_layout", spacegravFactoryLayout()) end

script.on_init(function()
	add_spaceFactory1Layout()
	add_gravFactoryLayout()
end)
script.on_configuration_changed(function()
	add_spaceFactory1Layout()
	add_gravFactoryLayout()
end)