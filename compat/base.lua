require("scripts.utility")
local interior_tile = collision_mask_util_extended.get_make_named_collision_mask("interior-tile")

-- Artillery Turret
add_collision_layer("artillery-turret", "artillery-turret", interior_tile)
