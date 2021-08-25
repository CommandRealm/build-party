execute as @e[tag=focii,type=armor_stand] at @s store result score @s focii_leg run data get entity @s Pose.RightLeg[0]
scoreboard players remove @e[tag=focii,type=armor_stand] focii_leg 25
scoreboard players operation @e[tag=focii,type=armor_stand,limit=1] focii_leg *= -1 focii_direction
execute as @e[tag=focii,type=armor_stand] at @s store result entity @s Pose.LeftLeg[0] float 1 run scoreboard players get @s focii_leg
scoreboard players operation @e[tag=focii,type=armor_stand,limit=1] focii_leg *= -1 focii_direction
execute as @e[tag=focii,type=armor_stand] at @s store result entity @s Pose.RightLeg[0] float 1 run scoreboard players get @s focii_leg
scoreboard players set @e[tag=focii,type=armor_stand,scores={focii_leg=..-85}] focii_direction 0