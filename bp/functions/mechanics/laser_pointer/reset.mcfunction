scoreboard objectives remove Laser_Pointer
scoreboard objectives remove Laser_RC_Steps
scoreboard objectives remove Laser_RC_Move
scoreboard objectives remove Laser_RC_Entity

scoreboard objectives add Laser_Pointer dummy
scoreboard objectives add Laser_RC_Steps dummy
scoreboard objectives add Laser_RC_Move dummy
scoreboard objectives add Laser_RC_Entity dummy

scoreboard players set Max_Steps Laser_Pointer 64
scoreboard players set Has_Nearby_Entity Laser_Pointer 0
