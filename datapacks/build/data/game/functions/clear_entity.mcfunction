kill @e[type=!player,type=!area_effect_cloud,dx=24,dy=50,dz=24,tag=!live,sort=random,limit=2]
fill ~ ~ ~ ~24 110 ~24 sponge replace dispenser
tellraw @p[tag=playing,tag=builder] {"text":"You have too many entities in your plot!","color":"red"}
playsound minecraft:entity.ghast.warn master @p[tag=playing,tag=builder] ~ ~ ~ 100 0
function game:limit_entities