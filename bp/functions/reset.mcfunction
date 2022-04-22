# Remove setup tag from players
tag @a remove Has_Setup

# Reset TMP scores
function utility/reset_temp_scores
function utility/reset_const_scores

# Reset IDs
function utility/id/reset

# Reset player IDs
scoreboard objectives remove Player_ID
scoreboard objectives add Player_ID dummy

# Mechanics
function mechanics/grappling_hook/reset
function mechanics/laser_pointer/reset

# Send message in chat to tell that the pack was reloaded
tellraw @a {"rawtext":[{"text":"§l§eReloaded!"}]}
