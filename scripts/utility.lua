collision_mask_util_extended = require("collision-mask-util-extended/data/collision-mask-util-extended")

function add_collision_layer(type, name, layer)
    if (data.raw[type][name].collision_mask) then
        table.insert(data.raw[type][name].collision_mask, layer)
    else
        data.raw[type][name].collision_mask = { "item-layer", "object-layer", "player-layer", "water-tile", layer }
    end
end
