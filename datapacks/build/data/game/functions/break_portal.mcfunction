scoreboard players reset @s break_portal
clear @s flint_and_steel
clear @s fire_charge
kill @e[type=small_fireball]
execute at @e[type=area_effect_cloud,tag=sponsor_marker,sort=nearest,limit=1] run fill ~-2 ~ ~-2 ~26 110 ~26 sponge replace dispenser
execute at @e[type=area_effect_cloud,tag=sponsor_marker,sort=nearest,limit=1] run fill ~-2 ~ ~-2 ~26 110 ~26 sponge replace obsidian
execute at @e[type=area_effect_cloud,tag=sponsor_marker,sort=nearest,limit=1] run fill ~-2 ~ ~-2 ~26 110 ~26 sponge replace end_portal_frame
execute at @e[type=area_effect_cloud,tag=sponsor_marker,sort=nearest,limit=1] run fill ~-2 ~ ~-2 ~26 110 ~26 sponge replace observer