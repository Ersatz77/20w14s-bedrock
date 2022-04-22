# Add temp tag to help with targeting this entity
tag @s add Using_Laser_Pointer

# Create raycast entity and make it face the same direction as the player
summon 20w14s:laser_pointer_rc ~ ~ ~
tp @e[type=20w14s:laser_pointer_rc,r=1,c=1] ^ ^ ^-0.1 facing @s

# Start raycast
execute @e[type=20w14s:laser_pointer_rc,r=1,c=1] ~ ~ ~ function mechanics/laser_pointer/setup_raycast

# Remove temp tag
tag @s remove Using_Laser_Pointer
