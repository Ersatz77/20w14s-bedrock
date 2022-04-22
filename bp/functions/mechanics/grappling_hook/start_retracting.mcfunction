# Starts grappling hook retraction
tag @s add Is_Retracting

# Find players, dummys, and seat with the same ID as the hook
execute @a ~ ~ ~ scoreboard players operation @s CMP_Grapple_ID_1 = @s Player_ID
execute @e[type=20w14s:grappling_hook_dummy] ~ ~ ~ scoreboard players operation @s CMP_Grapple_ID_2 = @s Grapple_Plyr_ID
execute @e[type=20w14s:grappling_hook_seat] ~ ~ ~ scoreboard players operation @s CMP_Grapple_ID_3 = @s Grapple_Plyr_ID

scoreboard players operation @a CMP_Grapple_ID_1 -= @s Grapple_Plyr_ID
scoreboard players operation @e[type=20w14s:grappling_hook_dummy] CMP_Grapple_ID_2 -= @s Grapple_Plyr_ID
scoreboard players operation @e[type=20w14s:grappling_hook_seat] CMP_Grapple_ID_3 -= @s Grapple_Plyr_ID

# Run commands on entities with matching IDs
tag @e[type=20w14s:grappling_hook_dummy,scores={CMP_Grapple_ID_2=0}] add Is_Retracting
tag @e[type=20w14s:grappling_hook_seat,scores={CMP_Grapple_ID_3=0}] add Is_Retracting
ride @a[scores={CMP_Grapple_ID_1=0},c=1] start_riding @e[type=20w14s:grappling_hook_seat,tag=Is_Retracting,scores={CMP_Grapple_ID_3=0},c=1] teleport_rider until_full

# Retraction sound
playsound mob.irongolem.crack @a ~ ~ ~ 1 2.75
