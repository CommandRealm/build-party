scoreboard players set $mod random 10
summon area_effect_cloud ~ ~1 ~ {Tags:["random"],Age:1}
execute store result score $rand random run data get entity @e[type=area_effect_cloud,tag=random,limit=1] UUID[0] 1
scoreboard players operation $rand random %= $mod random
kill @e[type=area_effect_cloud,tag=random]
execute if score $rand random matches 0 run tp @s 38 70 21 ~ 90
execute if score $rand random matches 1 run tp @s 35 71 19 ~ 90
execute if score $rand random matches 2 run tp @s 31 72 18 ~ 90
execute if score $rand random matches 3 run tp @s 27 71 19 ~ 90
execute if score $rand random matches 4 run tp @s 24 70 21 ~ 90

execute if score $rand random matches 5 run tp @s -38 70 21 ~ 90
execute if score $rand random matches 6 run tp @s -35 71 19 ~ 90
execute if score $rand random matches 7 run tp @s -31 72 18 ~ 90
execute if score $rand random matches 8 run tp @s -27 71 19 ~ 90
execute if score $rand random matches 9 run tp @s -24 70 21 ~ 90
execute at @s run particle minecraft:cloud ~ ~-3 ~ 0.5 3 0.5 0.25 150
execute at @s run particle minecraft:falling_water ~ ~-3 ~ 0.5 4 0.5 0.25 100
execute at @s run playsound minecraft:block.dispenser.launch master @a ~ ~ ~ 1 0
execute at @s run playsound minecraft:entity.generic.splash master @a ~ ~ ~ 1 1
execute at @s run playsound minecraft:entity.generic.splash master @a ~ ~ ~ 1 2
execute at @s run playsound minecraft:entity.generic.splash master @a ~ ~ ~ 1 0
execute at @s run playsound minecraft:entity.generic.splash master @a ~ ~ ~ 1 1.5
effect give @s minecraft:levitation 1 40 true