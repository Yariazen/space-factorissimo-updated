require("scripts.utility")
local interior_tile = collision_mask_util_extended.get_make_named_collision_mask("interior-tile")

-- Satellite Rocket Silo
add_collision_layer("rocket-silo", "rocket-silo", interior_tile)

-- Space Probe Rocket Silo
add_collision_layer("rocket-silo", "se-space-probe-rocket-silo", interior_tile)

-- Telescope
add_collision_layer("assembling-machine", "se-space-telescope", interior_tile)

-- Gamma Ray Telescope
add_collision_layer("assembling-machine", "se-space-telescope-gammaray", interior_tile)

-- Microwave Telescope
add_collision_layer("assembling-machine", "se-space-telescope-microwave", interior_tile)

-- Radio Telescope
add_collision_layer("assembling-machine", "se-space-telescope-radio", interior_tile)

-- Xray Telescope
add_collision_layer("assembling-machine", "se-space-telescope-xray", interior_tile)

-- Delivery Cannon Chest
add_collision_layer("container", "se-delivery-cannon-chest", interior_tile)

-- Energy Beam Receiver
add_collision_layer("reactor", "se-energy-receiver", interior_tile)

-- Signal Transmitter
add_collision_layer("roboport", "aai-signal-sender", interior_tile)

-- Signal Receiver
add_collision_layer("roboport", "aai-signal-receiver", interior_tile)
