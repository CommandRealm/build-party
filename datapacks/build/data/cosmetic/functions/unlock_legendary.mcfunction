scoreboard players set $mod random 4
summon area_effect_cloud ~ ~1 ~ {Tags:["random"],Age:1}
execute store result score $rand random run data get entity @e[type=area_effect_cloud,tag=random,limit=1] UUID[0] 1
scoreboard players operation $rand random %= $mod random
kill @e[type=area_effect_cloud,tag=random]
playsound minecraft:block.end_portal_frame.fill master @s ~ ~ ~ 10000 0
execute if score $rand random matches 0 run function cosmetic:unlock_h_16
execute if score $rand random matches 1 run function cosmetic:unlock_h_17
execute if score $rand random matches 2 run function cosmetic:unlock_m_8
execute if score $rand random matches 3 run function cosmetic:unlock_so_8