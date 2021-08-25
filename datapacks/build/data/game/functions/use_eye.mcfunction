tellraw @s {"text":"You shouldn't go to the end right now!","color":"red"}
playsound minecraft:entity.evoker.prepare_wololo master @s ~ ~ ~ 1000 2
execute at @e[type=area_effect_cloud,tag=sponsor_marker,sort=nearest,limit=1] run fill ~24 110 ~24 ~ ~ ~ sponge replace end_portal_frame
execute at @e[type=area_effect_cloud,tag=sponsor_marker,sort=nearest,limit=1] run fill ~24 110 ~24 ~ ~ ~ sponge replace end_portal
clear @s ender_eye
scoreboard players reset @s use_eye