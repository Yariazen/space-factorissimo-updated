local north = defines.direction.north
local east = defines.direction.east
local south = defines.direction.south
local west = defines.direction.west

local make_connection = function(...) return remote.call('factorissimo', 'make_connection', ...) end

local pattern_table = {
    ["space"] = {
        ["1"] = {
            ' +++++   ++ ',
            '++++++  +++ ',
            '+++    + ++ ',
            '+++++    ++ ',
            ' +++++   ++ ',
            '   +++   ++ ',
            '++++++   ++ ',
            '+++++  +++++',
        },
        ["2"] = {
            ' +++++  +++ ',
            '++++++ ++ ++',
            '+++       ++',
            '+++++    ++ ',
            ' +++++  ++  ',
            '   +++ ++   ',
            '++++++ ++ ++',
            '+++++  +++++',
        },
        ["3"] = {
            ' +++++  +++ ',
            '++++++ ++ ++',
            '+++       ++',
            '+++++    ++ ',
            ' +++++    ++',
            '   +++    ++',
            '++++++ ++ ++',
            '+++++   +++ ',
        }
    },
    ["gravity"] = {
        ["1"] = {
            '  ++++   ++ ',
            '++++++  +++ ',
            '++     + ++ ',
            '++ +++   ++ ',
            '++ +++   ++ ',
            '++  ++   ++ ',
            '++++++   ++ ',
            '  ++++ +++++',
        },
        ["2"] = {
            '  ++++  +++ ',
            '++++++ ++ ++',
            '++        ++',
            '++ +++   ++ ',
            '++ +++  ++  ',
            '++  ++ ++   ',
            '++++++ ++ ++',
            '  ++++ +++++',
        },
        ["3"] = {
            '  ++++  +++ ',
            '++++++ ++ ++',
            '++        ++',
            '++ +++   ++ ',
            '++ +++    ++',
            '++  ++    ++',
            '++++++ ++ ++',
            '  ++++  +++ ',
        }
    }
}

function make_layout(info)
    return {
        name = info.name,
        tier = info.tier,
        inside_size = info.inside_size,
        outside_size = info.outside_size,
        inside_door_x = info.inside_door_x,
        inside_door_y = info.inside_door_y,
        outside_door_x = info.outside_door_x,
        outside_door_y = info.outside_door_y,
        outside_energy_receiver_type = info.outside_energy_receiver_type,
        inside_energy_x = info.inside_energy_x,
        inside_energy_y = info.inside_energy_y,
        overlay_name = info.overlay_name,
        overlay_x = info.overlay_x,
        overlay_y = info.overlay_y,
        rectangles = info.rectangles,
        mosaics = {
            {
                x1 = -6, x2 = 6, y1 = -4, y2 = 4, tile = info.pattern, pattern = pattern_table[info.partType][info.tier]
            }
        },
        connection_tile = info.floor,
        connections = info.connections,
        overlays = info.overlays
    }
end

function tier_1_layout(name)
    info = {}
    info.name = name
    info.fullType = name:sub(0, #name - 2)
    info.partType = name:match("(.+)-(.+)-(.+)")
    info.tier = name:sub(#name, #name + 1)
    info.overlay_name = name .. "-overlay"
    info.wall = info.fullType .. "-wall-" .. info.tier
    info.floor = info.fullType .. "-floor"
    info.entrance = info.fullType .. "-entrance"
    info.pattern = info.fullType .. "-pattern-" .. info.tier
    info.inside_size = 30
    info.outside_size = 8
    info.inside_door_x = 0
    info.inside_door_y = 16
    info.outside_door_x = 0
    info.outside_door_y = 4
    info.outside_energy_receiver_type = 'factory-power-input-8'
    info.inside_energy_x = -4
    info.inside_energy_y = 17
    info.overlay_x = 0
    info.overlay_y = 3
    info.rectangles = {
        {
            x1 = -16, x2 = 16, y1 = -16, y2 = 16, tile = info.wall
        },
        {
            x1 = -15, x2 = 15, y1 = -15, y2 = 15, tile = info.floor
        },
        {
            x1 = -3, x2 = 3, y1 = 15, y2 = 18, tile = info.wall
        },
        {
            x1 = -2, x2 = 2, y1 = 15, y2 = 18, tile = info.entrance
        },
    }
    info.connections = {
        w1 = make_connection('w1', -4.5, -2.5, -15.5, -9.5, west),
        w2 = make_connection('w2', -4.5, -1.5, -15.5, -5.5, west),
        w3 = make_connection('w3', -4.5, 1.5, -15.5, 5.5, west),
        w4 = make_connection('w4', -4.5, 2.5, -15.5, 9.5, west),

        e1 = make_connection('e1', 4.5, -2.5, 15.5, -9.5, east),
        e2 = make_connection('e2', 4.5, -1.5, 15.5, -5.5, east),
        e3 = make_connection('e3', 4.5, 1.5, 15.5, 5.5, east),
        e4 = make_connection('e4', 4.5, 2.5, 15.5, 9.5, east),

        n1 = make_connection('n1', -2.5, -4.5, -9.5, -15.5, north),
        n2 = make_connection('n2', -1.5, -4.5, -5.5, -15.5, north),
        n3 = make_connection('n3', 1.5, -4.5, 5.5, -15.5, north),
        n4 = make_connection('n4', 2.5, -4.5, 9.5, -15.5, north),

        s1 = make_connection('s1', -2.5, 4.5, -9.5, 15.5, south),
        s2 = make_connection('s2', -1.5, 4.5, -5.5, 15.5, south),
        s3 = make_connection('s3', 1.5, 4.5, 5.5, 15.5, south),
        s4 = make_connection('s4', 2.5, 4.5, 9.5, 15.5, south)

    }
    info.overlays = {
        outside_x = 0,
        outside_y = -1,
        outside_w = 8,
        outside_h = 6,
        inside_x = 3.5,
        inside_y = 16.5
    }
    return make_layout(info)
end

function tier_2_layout(name)
    info = {}
    info.name = name
    info.fullType = name:sub(0, #name - 2)
    info.partType = name:match("(.+)-(.+)-(.+)")
    info.tier = name:sub(#name, #name + 1)
    info.overlay_name = name .. "-overlay"
    info.wall = info.fullType .. "-wall-" .. info.tier
    info.floor = info.fullType .. "-floor"
    info.entrance = info.fullType .. "-entrance"
    info.pattern = info.fullType .. "-pattern-" .. info.tier
    info.inside_size = 46
    info.outside_size = 12
    info.inside_door_x = 0
    info.inside_door_y = 24
    info.outside_door_x = 0
    info.outside_door_y = 6
    info.outside_energy_receiver_type = 'factory-power-input-12'
    info.inside_energy_x = -4
    info.inside_energy_y = 25
    info.overlay_x = 0
    info.overlay_y = 5
    info.rectangles = {
        {
            x1 = -24, x2 = 24, y1 = -24, y2 = 24, tile = info.wall
        },
        {
            x1 = -23, x2 = 23, y1 = -23, y2 = 23, tile = info.floor
        },
        {
            x1 = -3, x2 = 3, y1 = 23, y2 = 26, tile = info.wall
        },
        {
            x1 = -2, x2 = 2, y1 = 23, y2 = 26, tile = info.entrance
        },
    }
    info.connections = {
        w1 = make_connection('w1', -6.5, -4.5, -23.5, -18.5, west),
        w2 = make_connection('w2', -6.5, -3.5, -23.5, -13.5, west),
        w3 = make_connection('w3', -6.5, -2.5, -23.5, -8.5, west),
        w4 = make_connection('w4', -6.5, 2.5, -23.5, 8.5, west),
        w5 = make_connection('w5', -6.5, 3.5, -23.5, 13.5, west),
        w6 = make_connection('w6', -6.5, 4.5, -23.5, 18.5, west),

        e1 = make_connection('e1', 6.5, -4.5, 23.5, -18.5, east),
        e2 = make_connection('e2', 6.5, -3.5, 23.5, -13.5, east),
        e3 = make_connection('e3', 6.5, -2.5, 23.5, -8.5, east),
        e4 = make_connection('e4', 6.5, 2.5, 23.5, 8.5, east),
        e5 = make_connection('e5', 6.5, 3.5, 23.5, 13.5, east),
        e6 = make_connection('e6', 6.5, 4.5, 23.5, 18.5, east),

        n1 = make_connection('n1', -4.5, -6.5, -18.5, -23.5, north),
        n2 = make_connection('n2', -3.5, -6.5, -13.5, -23.5, north),
        n3 = make_connection('n3', -2.5, -6.5, -8.5, -23.5, north),
        n4 = make_connection('n4', 2.5, -6.5, 8.5, -23.5, north),
        n5 = make_connection('n5', 3.5, -6.5, 13.5, -23.5, north),
        n6 = make_connection('n6', 4.5, -6.5, 18.5, -23.5, north),

        s1 = make_connection('s1', -4.5, 6.5, -18.5, 23.5, south),
        s2 = make_connection('s2', -3.5, 6.5, -13.5, 23.5, south),
        s3 = make_connection('s3', -2.5, 6.5, -8.5, 23.5, south),
        s4 = make_connection('s4', 2.5, 6.5, 8.5, 23.5, south),
        s5 = make_connection('s5', 3.5, 6.5, 13.5, 23.5, south),
        s6 = make_connection('s6', 4.5, 6.5, 18.5, 23.5, south)
    }
    info.overlays = {
        outside_x = 0,
        outside_y = -1,
        outside_w = 12,
        outside_h = 10,
        inside_x = 3.5,
        inside_y = 24.5
    }
    return make_layout(info)
end

function tier_3_layout(name)
    info = {}
    info.name = name
    info.fullType = name:sub(0, #name - 2)
    info.partType = name:match("(.+)-(.+)-(.+)")
    info.tier = name:sub(#name, #name + 1)
    info.overlay_name = name .. "-overlay"
    info.wall = info.fullType .. "-wall-" .. info.tier
    info.floor = info.fullType .. "-floor"
    info.entrance = info.fullType .. "-entrance"
    info.pattern = info.fullType .. "-pattern-" .. info.tier
    info.inside_size = 60
    info.outside_size = 16
    info.inside_door_x = 0
    info.inside_door_y = 31
    info.outside_door_x = 0
    info.outside_door_y = 8
    info.outside_energy_receiver_type = 'factory-power-input-16'
    info.inside_energy_x = -4
    info.inside_energy_y = 32
    info.overlay_x = 0
    info.overlay_y = 7
    info.rectangles = {
        {
            x1 = -31, x2 = 31, y1 = -31, y2 = 31, tile = info.wall
        },
        {
            x1 = -30, x2 = 30, y1 = -30, y2 = 30, tile = info.floor
        },
        {
            x1 = -3, x2 = 3, y1 = 30, y2 = 33, tile = info.wall
        },
        {
            x1 = -2, x2 = 2, y1 = 30, y2 = 33, tile = info.entrance
        },
    }
    info.connections = {
        w1 = make_connection('w1', -8.5, -5.5, -30.5, -24.5, west),
        w2 = make_connection('w2', -8.5, -4.5, -30.5, -20.5, west),
        w3 = make_connection('w3', -8.5, -3.5, -30.5, -9.5, west),
        w4 = make_connection('w4', -8.5, -2.5, -30.5, -5.5, west),
        w5 = make_connection('w5', -8.5, 2.5, -30.5, 5.5, west),
        w6 = make_connection('w6', -8.5, 3.5, -30.5, 9.5, west),
        w7 = make_connection('w7', -8.5, 4.5, -30.5, 20.5, west),
        w8 = make_connection('w8', -8.5, 5.5, -30.5, 24.5, west),

        e1 = make_connection('e1', 8.5, -5.5, 30.5, -24.5, east),
        e2 = make_connection('e2', 8.5, -4.5, 30.5, -20.5, east),
        e3 = make_connection('e3', 8.5, -3.5, 30.5, -9.5, east),
        e4 = make_connection('e4', 8.5, -2.5, 30.5, -5.5, east),
        e5 = make_connection('e5', 8.5, 2.5, 30.5, 5.5, east),
        e6 = make_connection('e6', 8.5, 3.5, 30.5, 9.5, east),
        e7 = make_connection('e7', 8.5, 4.5, 30.5, 20.5, east),
        e8 = make_connection('e8', 8.5, 5.5, 30.5, 24.5, east),

        n1 = make_connection('n1', -5.5, -8.5, -24.5, -30.5, north),
        n2 = make_connection('n2', -4.5, -8.5, -20.5, -30.5, north),
        n3 = make_connection('n3', -3.5, -8.5, -9.5, -30.5, north),
        n4 = make_connection('n4', -2.5, -8.5, -5.5, -30.5, north),
        n5 = make_connection('n5', 2.5, -8.5, 5.5, -30.5, north),
        n6 = make_connection('n6', 3.5, -8.5, 9.5, -30.5, north),
        n7 = make_connection('n7', 4.5, -8.5, 20.5, -30.5, north),
        n8 = make_connection('n8', 5.5, -8.5, 24.5, -30.5, north),

        s1 = make_connection('s1', -5.5, 8.5, -24.5, 30.5, south),
        s2 = make_connection('s2', -4.5, 8.5, -20.5, 30.5, south),
        s3 = make_connection('s3', -3.5, 8.5, -9.5, 30.5, south),
        s4 = make_connection('s4', -2.5, 8.5, -5.5, 30.5, south),
        s5 = make_connection('s5', 2.5, 8.5, 5.5, 30.5, south),
        s6 = make_connection('s6', 3.5, 8.5, 9.5, 30.5, south),
        s7 = make_connection('s7', 4.5, 8.5, 20.5, 30.5, south),
        s8 = make_connection('s8', 5.5, 8.5, 24.5, 30.5, south)
    }
    info.overlays = {
        outside_x = 0,
        outside_y = -1,
        outside_w = 16,
        outside_h = 14,
        inside_x = 3.5,
        inside_y = 31.5
    }
    return make_layout(info)
end
