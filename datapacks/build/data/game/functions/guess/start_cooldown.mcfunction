scoreboard players set $time cooldown 100
function game:guess/cooldown
gamemode spectator @a[tag=playing]
execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.guitar master @s ~ ~ ~ 100 0.59
execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.guitar master @s ~ ~ ~ 100 0.70
execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.guitar master @s ~ ~ ~ 100 0.89
execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.guitar master @s ~ ~ ~ 100 1.18
execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.guitar master @s ~ ~ ~ 100 1.41
execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.guitar master @s ~ ~ ~ 100 1.78
gamemode spectator @a[tag=playing]
tellraw @a[tag=playing] [{"text":" | ","color":"gold","bold":true},{"text":"The round is over!","color":"yellow","bold":false}]
title @a[tag=playing] times 5 75 5
title @a[x=0,y=66,z=0,distance=500..] title {"text":"The theme was: ","color":"gold"}
title @a[x=0,y=66,z=0,distance=500..] subtitle [{"nbt":"Theme","storage":"minecraft:theme","interpret":true,"color":"yellow"}]
bossbar set timer visible false