tag @a[team=spectator] add playing
gamemode adventure @a[tag=playing]
execute as @a[tag=playing,team=!blue,team=!orange,team=!green,team=!pink,team=!gray] at @s run function general:rank
stopsound @a[tag=playing]
title @a[tag=playing] times 0 25 5
scoreboard players reset @a[tag=playing] open_e_chest
effect clear @a[tag=playing]
clear @a[tag=playing]
scoreboard players set $game state 0
scoreboard players set @a[tag=playing] ready 0
execute if score $number auto_ready matches 1 run scoreboard players set @a[tag=playing] ready 1
tp @a[tag=playing] 0 66 0 0 -15
title @a[tag=playing] times 0 20 5
tag @a[tag=playing] remove playing
fill -32 8 8 -32 1 8 air
scoreboard objectives setdisplay sidebar
bossbar remove minecraft:timer
scoreboard objectives remove rate