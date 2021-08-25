kill @e[tag=sponsor_marker]
execute if entity @a[tag=playing,scores={player_id=1}] run summon area_effect_cloud -1084 65 -12 {Duration:100000,Tags:["sponsor_marker"]}
execute if entity @a[tag=playing,scores={player_id=2}] run summon area_effect_cloud -1012 65 -12 {Duration:100000,Tags:["sponsor_marker"]}
execute if entity @a[tag=playing,scores={player_id=3}] run summon area_effect_cloud -940 65 -12 {Duration:100000,Tags:["sponsor_marker"]}
execute if entity @a[tag=playing,scores={player_id=4}] run summon area_effect_cloud -868 65 -12 {Duration:100000,Tags:["sponsor_marker"]}
execute if entity @a[tag=playing,scores={player_id=5}] run summon area_effect_cloud -1084 65 60 {Duration:100000,Tags:["sponsor_marker"]}
execute if entity @a[tag=playing,scores={player_id=6}] run summon area_effect_cloud -1012 65 60 {Duration:100000,Tags:["sponsor_marker"]}
execute if entity @a[tag=playing,scores={player_id=7}] run summon area_effect_cloud -940 65 60 {Duration:100000,Tags:["sponsor_marker"]}
execute if entity @a[tag=playing,scores={player_id=8}] run summon area_effect_cloud -868 65 60 {Duration:100000,Tags:["sponsor_marker"]}
execute if entity @a[tag=playing,scores={player_id=9}] run summon area_effect_cloud -1084 65 132 {Duration:100000,Tags:["sponsor_marker"]}
execute if entity @a[tag=playing,scores={player_id=10}] run summon area_effect_cloud -1012 65 132 {Duration:100000,Tags:["sponsor_marker"]}
execute if entity @a[tag=playing,scores={player_id=11}] run summon area_effect_cloud -940 65 132 {Duration:100000,Tags:["sponsor_marker"]}
execute at @e[tag=sponsor_marker,type=area_effect_cloud] run fill ~-2 ~-1 ~-2 ~26 110 ~-1 barrier
execute at @e[tag=sponsor_marker,type=area_effect_cloud] run fill ~-2 ~-1 ~-2 ~-1 110 ~26 barrier
execute at @e[tag=sponsor_marker,type=area_effect_cloud] run fill ~26 ~-1 ~-2 ~26 110 ~26 barrier
execute at @e[tag=sponsor_marker,type=area_effect_cloud] run fill ~-2 ~-1 ~26 ~26 110 ~26 barrier
execute if score $number mode matches 0 as @a[team=guessing] run function game:guess/fill_books
execute as @e[tag=sponsor_marker] at @s run fill ~24 ~1 ~24 ~ 109 ~ air
execute as @e[tag=sponsor_marker] at @s run clone ~ 3 ~ ~24 5 ~24 ~ ~-2 ~
execute as @e[tag=sponsor_marker] at @s run tag @e[type=!player,type=!area_effect_cloud,distance=..100,tag=!live] add die_very_soon
execute as @e[tag=sponsor_marker] at @s run tp @e[type=!player,type=!area_effect_cloud,distance=..100,tag=!live,tag=die_very_soon] 0 1 0
execute as @e[tag=sponsor_marker] at @s run kill @e[tag=die_very_soon,tag=!live]
effect clear @a[tag=playing]
tag @a remove delay_dnb_map