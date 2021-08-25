function game:tp_to_sponsor
tellraw @s[gamemode=creative] {"text":"Please don't break the map!","color":"red"}
playsound minecraft:block.note_block.didgeridoo master @s[gamemode=creative] ~ ~ ~ 100000 0
execute at @s at @e[tag=sponsor_marker,type=area_effect_cloud,sort=nearest,limit=1] run fill ~-2 ~-1 ~-2 ~26 110 ~-1 barrier
execute at @s at @e[tag=sponsor_marker,type=area_effect_cloud,sort=nearest,limit=1] run fill ~-2 ~-1 ~-2 ~-1 110 ~26 barrier
execute at @s at @e[tag=sponsor_marker,type=area_effect_cloud,sort=nearest,limit=1] run fill ~26 ~-1 ~-2 ~25 110 ~26 barrier
execute at @s at @e[tag=sponsor_marker,type=area_effect_cloud,sort=nearest,limit=1] run fill ~-2 ~-1 ~26 ~26 110 ~25 barrier