execute as @e[tag=sponsor_marker,type=area_effect_cloud] at @s unless blocks ~ ~-2 ~ ~24 ~-1 ~24 ~ 3 ~ all as @p[tag=builder] at @s run function game:break_edges

execute at @e[tag=sponsor_marker,type=area_effect_cloud] unless blocks ~-2 ~-1 ~-2 ~26 110 ~-1 -5 1 -55 all as @p[tag=builder] at @s run function game:break_edges
execute at @e[tag=sponsor_marker,type=area_effect_cloud] unless blocks ~-2 ~-1 ~-2 ~-1 110 ~26 -5 1 -55 all as @p[tag=builder] at @s run function game:break_edges
execute at @e[tag=sponsor_marker,type=area_effect_cloud] unless blocks ~26 ~-1 ~-2 ~25 110 ~26 22 1 -55 all as @p[tag=builder] at @s run function game:break_edges
execute at @e[tag=sponsor_marker,type=area_effect_cloud] unless blocks ~-2 ~-1 ~26 ~26 110 ~25 -5 1 -28 all as @p[tag=builder] at @s run function game:break_edges
