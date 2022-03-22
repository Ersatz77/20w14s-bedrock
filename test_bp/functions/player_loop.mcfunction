# Initialize everything on first load
scoreboard objectives add Loaded dummy

scoreboard players add Is_Loaded Loaded 0
scoreboard players operation @s Loaded = Is_Loaded Loaded
execute @s[scores={Loaded=0}] ~ ~ ~ function reset
scoreboard players set Is_Loaded Loaded 1

# Get an ID for this player if they don't have one
execute @s[tag=!Has_Setup] ~ ~ ~ function utility/id/generate_1
scoreboard players operation @s[tag=!Has_Setup] Player_ID = Current_1 ID
tag @s add Has_Setup

# Mechanics
function mechanics/grappling_hook/teleport_dummy_to_player
