# Decrement steps
scoreboard players remove @s Laser_RC_Steps 1

particle minecraft:basic_flame_particle ~ ~ ~

# Check if we are in a valid block and the step count is above 0
scoreboard players set @s Laser_RC_Move 0
execute @s ~ ~ ~ detect ~ ~ ~ minecraft:air -1 scoreboard players set @s Laser_RC_Move 1
execute @s ~ ~ ~ detect ~ ~ ~ minecraft:glass -1 scoreboard players set @s Laser_RC_Move 1
execute @s ~ ~ ~ detect ~ ~ ~ minecraft:glass_pane -1 scoreboard players set @s Laser_RC_Move 1
execute @s ~ ~ ~ detect ~ ~ ~ minecraft:stained_glass -1 scoreboard players set @s Laser_RC_Move 1
execute @s ~ ~ ~ detect ~ ~ ~ minecraft:stained_glass_pane -1 scoreboard players set @s Laser_RC_Move 1
scoreboard players operation @s[scores={Laser_RC_Steps=1..}] Laser_RC_Move *= "-1" Const

# If an entity is nearby, stop the raycast reguardless of the previous block/step check
scoreboard players set Has_Nearby_Entity Laser_Pointer 0
scoreboard players set @s Laser_RC_Entity 0

execute @e[family=mob,r=1] ~ ~ ~ scoreboard players set Has_Nearby_Entity Laser_Pointer 1

scoreboard players operation @s Laser_RC_Entity = Has_Nearby_Entity Laser_Pointer
scoreboard players set @s[scores={Laser_RC_Entity=1}] Laser_RC_Move 0

# Exit condition
execute @s[scores={Laser_RC_Move=0}] ~ ~ ~ function mechanics/laser_pointer/ray_end

# Next raycast step
tp @s[scores={Laser_RC_Move=..-1}] ^ ^ ^0.5
execute @s[scores={Laser_RC_Move=..-1}] ~ ~ ~ function mechanics/laser_pointer/ray
