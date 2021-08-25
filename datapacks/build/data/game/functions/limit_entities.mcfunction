scoreboard players set @s entities 0
execute as @e[type=!player,type=!area_effect_cloud,dx=24,dy=50,dz=24,tag=!live] run scoreboard players add @e[type=area_effect_cloud,tag=sponsor_marker,sort=nearest,limit=1] entities 1
execute if entity @s[scores={entities=16..}] run function game:clear_entity