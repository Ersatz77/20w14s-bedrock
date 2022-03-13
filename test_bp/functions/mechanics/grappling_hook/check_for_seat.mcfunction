# Bool values to check if seat exists
scoreboard players set @s Has_Grapple_Seat 0
scoreboard players set Has_Seat Grappling_Hook 0

# Copy all grapple seat IDs to the CMP scoreboard then subtract it by this grappling hook projectile's ID
execute @e[type=test:grappling_hook_seat] ~ ~ ~ scoreboard players operation @s CMP_Grapple_ID_1 = @s Grapple_ID
scoreboard players operation @e[type=test:grappling_hook_seat] CMP_Grapple_ID_1 -= @s Grapple_ID

# Copy result back to this entity
execute @e[type=test:grappling_hook_seat,scores={CMP_Grapple_ID_1=0}] ~ ~ ~ scoreboard players set Has_Seat Grappling_Hook 1
scoreboard players operation @s Has_Grapple_Seat = Has_Seat Grappling_Hook

# Remove entity if needed
event entity @s[scores={Has_Grapple_Seat=0}] test:remove
