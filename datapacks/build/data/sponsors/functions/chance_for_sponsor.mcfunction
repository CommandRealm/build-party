scoreboard players set $mod random 2
summon area_effect_cloud ~ ~1 ~ {Tags:["random"],Age:1}
execute store result score $rand random run data get entity @e[type=area_effect_cloud,tag=random,limit=1] UUID[0] 1
scoreboard players operation $rand random %= $mod random
kill @e[type=area_effect_cloud,tag=random]
execute if entity @s[tag=just_won] run scoreboard players set $rand random 0
execute if score $rand random matches 0 run function sponsors:unlock_sponsor
tag @s remove just_won