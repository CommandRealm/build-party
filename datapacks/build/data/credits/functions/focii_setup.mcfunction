scoreboard objectives add focii_leg dummy
scoreboard objectives add focii_direction dummy
scoreboard players set -1 focii_direction -1
kill @e[tag=focii]
summon armor_stand -2 74.0 69 {ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:"Focii_"}}],ShowArms:1b,NoBasePlate:1b,Rotation:[157.5f,0.0f],Tags:["focii","show_details"],Invulnerable:1b,Marker:1b,NoGravity:1b,Pose:{RightLeg:[0.0f,0.0f,0.0f],LeftLeg:[0.0f,0.0f,0.0f],Body:[0.0f,0.0f,0.0f],RightArm:[0.0f,0.0f,0.0f],LeftArm:[0.0f,0.0f,0.0f]}}
scoreboard players set @e[type=armor_stand,tag=focii] focii_direction 0
item replace entity @e[tag=focii] armor.feet with leather_boots{display: {color: 2037267}}
item replace entity @e[tag=focii] armor.chest with leather_chestplate{display: {color: 2891028}}
item replace entity @e[tag=focii] armor.legs with golden_leggings{display: {color: 16777215}}