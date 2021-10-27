##clearing sponsor

execute as @e[type=area_effect_cloud,tag=sponsor_marker] at @s run fill ~24 ~1 ~24 ~ 109 ~ air
execute as @e[type=area_effect_cloud,tag=sponsor_marker] at @s run clone ~ 3 ~ ~24 5 ~24 ~ ~-2 ~
execute as @e[type=area_effect_cloud,tag=sponsor_marker] at @s run tag @e[type=!player,type=!area_effect_cloud,distance=..100,tag=!live] add die_very_soon
execute as @e[type=area_effect_cloud,tag=sponsor_marker] at @s run tp @e[type=!player,type=!area_effect_cloud,distance=..100,tag=!live,tag=die_very_soon] 0 1 0
execute as @e[type=area_effect_cloud,tag=sponsor_marker] at @s run kill @e[tag=die_very_soon,tag=!live]
