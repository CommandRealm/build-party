scoreboard players reset @s rc
clear @s
team join spectator
gamemode spectator @s
tp @s @r[tag=playing]
bossbar set minecraft:lobby players @a[tag=!playing,gamemode=adventure]