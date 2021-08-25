execute as @a[tag=builder] at @s run function game:mark_sponsor
execute if score $number mode matches 0 as @a[team=guessing] run function game:guess/fill_books
execute as @e[tag=sponsor_marker] at @s run fill ~24 ~1 ~24 ~ 109 ~ air
execute as @e[tag=sponsor_marker] at @s run clone ~ 3 ~ ~24 5 ~24 ~ ~-2 ~
execute as @e[tag=sponsor_marker] at @s run tag @e[type=!player,type=!area_effect_cloud,distance=..100,tag=!live] add die_very_soon
execute as @e[tag=sponsor_marker] at @s run tp @e[type=!player,type=!area_effect_cloud,distance=..100,tag=!live,tag=die_very_soon] 0 1 0
execute as @e[tag=sponsor_marker] at @s run kill @e[tag=die_very_soon,tag=!live]
execute if score $number mode matches 0 run clear @a[tag=building]
execute if score $number mode matches 0 as @a[tag=playing,tag=builder] at @s run tp @a[team=guessing,tag=playing] ~ 73.5 ~6 facing entity @s
clone 9976 3 -24 10024 3 24 9976 63 -24