title @a[tag=builder,tag=playing] actionbar [{"text":"Theme: ","color":"gold","bold":true},{"selector":"@e[tag=theme,limit=1]","color":"yellow","bold":false}]
execute unless entity @a[tag=delay_dnb_map] at @e[tag=sponsor_marker,type=area_effect_cloud] positioned ~-2 ~-1 ~-2 as @p[tag=builder,dx=30,dy=60,dz=30] positioned ~2 ~1 ~2 unless entity @s[dx=23.0,dy=44,dz=23.0] run function game:battle/out_of_plot
execute as @e[type=enderman,x=-1000,y=66,z=0,distance=..500] at @s at @e[tag=sponsor_marker,type=area_effect_cloud,sort=nearest,limit=1] unless entity @s[dx=23.0,dy=44,dz=23.0] run function game:kill_enderman
scoreboard players remove $time update_bossbar 1
execute if score $time update_bossbar matches 0 run function game:update_bossbar
execute if score $time game_timer matches 0 run function game:battle/setup_viewing_builds
