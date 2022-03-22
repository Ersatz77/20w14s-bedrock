# Setup scores
scoreboard players set @s Laser_RC_Move 0
scoreboard players operation @s Laser_RC_Steps = Max_Steps Laser_Pointer
scoreboard players set Has_Nearby_Entity Laser_Pointer 0
scoreboard players set @s Laser_RC_Entity 0

# Start raycast
function mechanics/laser_pointer/ray
