# Bool values to check if hook exists
scoreboard players set @s Has_Grapple_Hook 0
scoreboard players set Has_Hook Grappling_Hook 0

# Copy all grapple hook IDs to the CMP scoreboard then subtract it by this grappling dummy's ID
execute @e[type=test:grappling_hook] ~ ~ ~ scoreboard players operation @s CMP_Grapple_ID_1 = @s Grapple_ID
scoreboard players operation @e[type=test:grappling_hook] CMP_Grapple_ID_1 -= @s Grapple_ID

# Copy result back to this entity
execute @e[type=test:grappling_hook,scores={CMP_Grapple_ID_1=0}] ~ ~ ~ scoreboard players set Has_Hook Grappling_Hook 1
scoreboard players operation @s Has_Grapple_Hook = Has_Hook Grappling_Hook

# Remove entity if needed
event entity @s[scores={Has_Grapple_Hook=0}] test:remove
