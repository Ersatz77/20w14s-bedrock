# Copy all grapple dummy IDs to the CMP scoreboard then subtract it by this player's ID
execute @e[type=20w14s:grappling_hook_dummy] ~ ~ ~ scoreboard players operation @s CMP_Grapple_ID_1 = @s Grapple_Plyr_ID
scoreboard players operation @e[type=20w14s:grappling_hook_dummy] CMP_Grapple_ID_1 -= @s Player_ID

# Dummys that now have a CMP score of 0 are linked to this player
execute @s ~ ~0.75 ~ tp @e[type=20w14s:grappling_hook_dummy,scores={CMP_Grapple_ID_1=0},tag=!Is_Retracting] ~ ~ ~
