# Removes grappling hooks with the same ID as the player
execute @e[family=grappling_hook] ~ ~ ~ scoreboard players operation @s CMP_Grapple_ID_1 = @s Grapple_Plyr_ID
scoreboard players operation @e[family=grappling_hook] CMP_Grapple_ID_1 -= Removal_Player_ID Grappling_Hook

# Remove grappling hook entities
event entity @e[family=grappling_hook,scores={CMP_Grapple_ID_1=0}] 20w14s:remove
