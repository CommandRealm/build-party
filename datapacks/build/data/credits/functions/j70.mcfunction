execute as @e[type=armor_stand,tag=j70_helmet] at @s run tp @s ~ ~ ~ ~15 ~
data modify entity @s Pos.LeftArm[2]
execute as @e[tag=j70,type=armor_stand] at @s store result score @s j70_arm run data get entity @s Pose.LeftArm[1]
scoreboard players add @e[tag=j70,type=armor_stand] j70_arm 15
execute as @e[tag=j70,type=armor_stand] at @s store result entity @s Pose.LeftArm[1] float 1 run scoreboard players get @s j70_arm