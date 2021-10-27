scoreboard players set $mod random 8
summon area_effect_cloud ~ ~1 ~ {Tags:["random"],Age:1}
execute store result score $rand random run data get entity @e[type=area_effect_cloud,tag=random,limit=1] UUID[0] 1
scoreboard players operation $rand random %= $mod random
kill @e[type=area_effect_cloud,tag=random]
playsound minecraft:block.end_portal_frame.fill master @s ~ ~ ~ 10000 1
execute if score $rand random matches 0 run function cosmetic:unlock_h_12
execute if score $rand random matches 1 run function cosmetic:unlock_h_13
execute if score $rand random matches 2 run function cosmetic:unlock_h_14
execute if score $rand random matches 3 run function cosmetic:unlock_h_15
execute if score $rand random matches 4 run function cosmetic:unlock_m_6
execute if score $rand random matches 5 run function cosmetic:unlock_m_7
execute if score $rand random matches 6 run function cosmetic:unlock_so_6
execute if score $rand random matches 7 run function cosmetic:unlock_so_7