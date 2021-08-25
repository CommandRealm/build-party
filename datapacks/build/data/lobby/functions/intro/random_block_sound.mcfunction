scoreboard players set $mod random 8
summon area_effect_cloud ~ ~1 ~ {Tags:["random"],Age:1}
execute store result score $rand random run data get entity @e[type=area_effect_cloud,tag=random,limit=1] UUID[0] 1
scoreboard players operation $rand random %= $mod random
kill @e[type=area_effect_cloud,tag=random]
execute if score $rand random matches 0 run playsound minecraft:block.stone.place master @s ~ ~ ~ 10000 1
execute if score $rand random matches 1 run playsound minecraft:block.wood.place master @s ~ ~ ~ 10000 1
execute if score $rand random matches 2 run playsound minecraft:block.bamboo.place master @s ~ ~ ~ 10000 0
execute if score $rand random matches 3 run playsound minecraft:block.coral_block.place master @s ~ ~ ~ 10000 1
execute if score $rand random matches 4 run playsound minecraft:block.glass.place master @s ~ ~ ~ 10000 2
execute if score $rand random matches 5 run playsound minecraft:block.basalt.place master @s ~ ~ ~ 10000 1
execute if score $rand random matches 6 run playsound minecraft:block.basalt.place master @s ~ ~ ~ 10000 1
execute if score $rand random matches 7 run playsound minecraft:block.nylium.place master @s ~ ~ ~ 10000 2