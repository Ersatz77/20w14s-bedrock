# Add a temp tag to this entity so they don't get the effect
tag @s add Sunblock_Effect_Giver

playsound random.fizz @a ~ ~ ~ 1 1.5

# Apply effect to nearby players or entities
execute @e[family=mob,r=5] ~ ~ ~ function mechanics/sunblock/add_effect
execute @a[tag=!Sunblock_Effect_Giver,r=5] ~ ~ ~ function mechanics/sunblock/add_effect

# Remove temp tag
tag @s remove Sunblock_Effect_Giver
