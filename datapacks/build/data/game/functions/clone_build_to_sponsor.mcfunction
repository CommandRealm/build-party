
execute if entity @a[tag=playing,tag=show_build,scores={sponsor=0}] as @r[tag=playing,tag=!show_build] at @s as @e[type=area_effect_cloud,sort=nearest,limit=1,tag=sponsor_marker] at @s run clone ~24 ~ ~24 ~ 109 ~ 9988 65 -12
execute if entity @a[tag=playing,tag=show_build,scores={sponsor=1}] as @r[tag=playing,tag=!show_build] at @s as @e[type=area_effect_cloud,sort=nearest,limit=1,tag=sponsor_marker] at @s run clone ~24 ~ ~24 ~ 109 ~ 5988 65 -12
execute if entity @a[tag=playing,tag=show_build,scores={sponsor=7}] as @r[tag=playing,tag=!show_build] at @s as @e[type=area_effect_cloud,sort=nearest,limit=1,tag=sponsor_marker] at @s run clone ~24 ~ ~24 ~ 109 ~ 1988 65 -12
execute if entity @a[tag=playing,tag=show_build,scores={sponsor=2}] as @r[tag=playing,tag=!show_build] at @s as @e[type=area_effect_cloud,sort=nearest,limit=1,tag=sponsor_marker] at @s run clone ~24 ~ ~24 ~ 109 ~ 13988 65 -12
execute if entity @a[tag=playing,tag=show_build,scores={sponsor=3}] as @r[tag=playing,tag=!show_build] at @s as @e[type=area_effect_cloud,sort=nearest,limit=1,tag=sponsor_marker] at @s run clone ~24 ~ ~24 ~ 109 ~ 7988 65 -12
execute if entity @a[tag=playing,tag=show_build,scores={sponsor=5}] as @r[tag=playing,tag=!show_build] at @s as @e[type=area_effect_cloud,sort=nearest,limit=1,tag=sponsor_marker] at @s run clone ~24 ~ ~24 ~ 109 ~ 2988 65 -12
execute if entity @a[tag=playing,tag=show_build,scores={sponsor=4}] as @r[tag=playing,tag=!show_build] at @s as @e[type=area_effect_cloud,sort=nearest,limit=1,tag=sponsor_marker] at @s run clone ~24 ~ ~24 ~ 109 ~ 6988 65 -12
execute if entity @a[tag=playing,tag=show_build,scores={sponsor=8}] as @r[tag=playing,tag=!show_build] at @s as @e[type=area_effect_cloud,sort=nearest,limit=1,tag=sponsor_marker] at @s run clone ~24 ~ ~24 ~ 109 ~ 14988 65 -12
execute if entity @a[tag=playing,tag=show_build,scores={sponsor=6}] as @r[tag=playing,tag=!show_build] at @s as @e[type=area_effect_cloud,sort=nearest,limit=1,tag=sponsor_marker] at @s run clone ~24 ~ ~24 ~ 109 ~ 15988 65 -12

execute if entity @a[tag=playing,tag=show_build,scores={sponsor=9}] as @r[tag=playing,tag=!show_build] at @s as @e[type=area_effect_cloud,sort=nearest,limit=1,tag=sponsor_marker] at @s run clone ~24 ~ ~24 ~ 109 ~ 10988 65 -12
execute if entity @a[tag=playing,tag=show_build,scores={sponsor=10}] as @r[tag=playing,tag=!show_build] at @s as @e[type=area_effect_cloud,sort=nearest,limit=1,tag=sponsor_marker] at @s run clone ~24 ~ ~24 ~ 109 ~ 11988 65 -12
execute if entity @a[tag=playing,tag=show_build,scores={sponsor=11}] as @r[tag=playing,tag=!show_build] at @s as @e[type=area_effect_cloud,sort=nearest,limit=1,tag=sponsor_marker] at @s run clone ~24 ~ ~24 ~ 109 ~ 12988 65 -12


kill @e[tag=die]
execute as @r[tag=playing,tag=!show_build] at @s as @e[type=area_effect_cloud,sort=nearest,limit=1,tag=sponsor_marker] at @s run summon area_effect_cloud ~12 ~5 ~12 {Duration:1000,Tags:["die","build_being_rated"]}
execute as @r[tag=playing,tag=!show_build] at @s as @e[type=area_effect_cloud,sort=nearest,limit=1,tag=sponsor_marker] at @s run tag @e[type=!player,tag=!live,dx=24,dy=44,dz=44] add going_to_sponsor
execute as @e[tag=going_to_sponsor] at @s run function game:item_to_sponsor
execute as @a[tag=show_build] at @s run tp @a[tag=playing] @s