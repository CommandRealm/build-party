scoreboard players set $mod random 4
summon area_effect_cloud ~ ~1 ~ {Tags:["random"],Age:1}
execute store result score $rand random run data get entity @e[type=area_effect_cloud,tag=random,limit=1] UUID[0] 1
scoreboard players operation $rand random %= $mod random
kill @e[type=area_effect_cloud,tag=random]
execute if score $rand random matches 0..2 run tag @r add no_legendary
execute if score $rand random matches 0..2 run function cosmetic:unlock_epic
execute unless entity @a[tag=no_legendary] if score $rand random matches 3 run function cosmetic:unlock_legendary
tag @a remove no_legendary