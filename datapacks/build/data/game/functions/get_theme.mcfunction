scoreboard players set $mod random 1510
summon area_effect_cloud ~ ~1 ~ {Tags:["random"],Age:1}
execute store result score $rand random run data get entity @e[type=area_effect_cloud,tag=random,limit=1] UUID[0] 1
scoreboard players operation $rand random %= $mod random
kill @e[type=area_effect_cloud,tag=random]
kill @e[tag=theme]
fill -32 8 7 -32 1 7 air
fill -32 1 7 -32 9 7 air
function game:generate_theme

















fill -32 8 8 -32 1 8 redstone_block destroy