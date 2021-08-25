
execute as @e[tag=sponsor_marker,type=area_effect_cloud] at @s store success score @s break_out run fill ~-2 ~ ~-2 ~26 110 ~-1 barrier replace #states
execute at @e[tag=sponsor_marker,type=area_effect_cloud,scores={break_out=1..}] as @a[tag=builder,dx=25,dy=50,dz=25] at @s run function game:break_edges
execute as @e[tag=sponsor_marker,type=area_effect_cloud] at @s store success score @s break_out run fill ~-2 ~ ~-2 ~-1 110 ~26 barrier replace #states
execute at @e[tag=sponsor_marker,type=area_effect_cloud,scores={break_out=1..}] as @a[tag=builder,dx=25,dy=50,dz=25] at @s run function game:break_edges
execute as @e[tag=sponsor_marker,type=area_effect_cloud] at @s store success score @s break_out run fill ~26 ~ ~-2 ~25 110 ~26 barrier replace #states
execute at @e[tag=sponsor_marker,type=area_effect_cloud,scores={break_out=1..}] as @a[tag=builder,dx=25,dy=50,dz=25] at @s run function game:break_edges
execute as @e[tag=sponsor_marker,type=area_effect_cloud] at @s store success score @s break_out run fill ~-2 ~ ~26 ~26 110 ~25 barrier replace #states
execute at @e[tag=sponsor_marker,type=area_effect_cloud,scores={break_out=1..}] as @a[tag=builder,dx=25,dy=50,dz=25] at @s run function game:break_edges


execute as @e[tag=sponsor_marker,type=area_effect_cloud] at @s store success score @s break_out run fill ~-2 ~ ~-2 ~26 ~ ~-1 barrier replace #fill_area
execute at @e[tag=sponsor_marker,type=area_effect_cloud,scores={break_out=1..}] as @a[tag=builder,dx=25,dy=50,dz=25] at @s run function game:break_edges
execute as @e[tag=sponsor_marker,type=area_effect_cloud] at @s store success score @s break_out run fill ~-2 ~ ~-2 ~-1 ~ ~26 barrier replace #fill_area
execute at @e[tag=sponsor_marker,type=area_effect_cloud,scores={break_out=1..}] as @a[tag=builder,dx=25,dy=50,dz=25] at @s run function game:break_edges
execute as @e[tag=sponsor_marker,type=area_effect_cloud] at @s store success score @s break_out run fill ~26 ~ ~-2 ~25 ~ ~26 barrier replace #fill_area
execute at @e[tag=sponsor_marker,type=area_effect_cloud,scores={break_out=1..}] as @a[tag=builder,dx=25,dy=50,dz=25] at @s run function game:break_edges
execute as @e[tag=sponsor_marker,type=area_effect_cloud] at @s store success score @s break_out run fill ~-2 ~ ~26 ~26 ~ ~25 barrier replace #fill_area
execute at @e[tag=sponsor_marker,type=area_effect_cloud,scores={break_out=1..}] as @a[tag=builder,dx=25,dy=50,dz=25] at @s run function game:break_edges

execute as @e[tag=sponsor_marker,type=area_effect_cloud] at @s unless blocks ~ ~-2 ~ ~24 ~-1 ~24 ~ 3 ~ all as @a[tag=builder,dx=25,dy=50,dz=25] at @s run function game:break_edges

