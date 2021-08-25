tellraw @s {"text":"Please don't break the map!","color":"red"}
playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 10000 0
execute if score $number mode matches 0 run function game:tp_to_sponsor
execute at @e[tag=sponsor_marker,sort=nearest,limit=1,type=area_effect_cloud] positioned ~12 ~ ~12 run fill ~5 ~ ~5 ~-5 ~ ~-5 air replace end_portal
execute at @e[tag=sponsor_marker,sort=nearest,limit=1,type=area_effect_cloud] positioned ~12 ~ ~12 run fill ~5 ~ ~5 ~-5 ~ ~-5 air replace nether_portal
execute if score $number mode matches 1..2 run function game:tp_to_build
execute at @s run tp @s ~ ~ ~ 0 0
scoreboard players set @e[tag=sponsor_marker,type=area_effect_cloud,sort=nearest,limit=1] break_out 0
execute at @e[tag=sponsor_marker,sort=nearest,limit=1] run clone ~ 3 ~ ~24 4 ~24 ~ ~-2 ~
execute at @e[tag=sponsor_marker,type=area_effect_cloud] run fill ~-2 ~-1 ~-2 ~26 110 ~-1 barrier
execute at @e[tag=sponsor_marker,type=area_effect_cloud] run fill ~-2 ~-1 ~-2 ~-1 110 ~26 barrier
execute at @e[tag=sponsor_marker,type=area_effect_cloud] run fill ~26 ~-1 ~-2 ~25 110 ~26 barrier
execute at @e[tag=sponsor_marker,type=area_effect_cloud] run fill ~-2 ~-1 ~26 ~26 110 ~25 barrier