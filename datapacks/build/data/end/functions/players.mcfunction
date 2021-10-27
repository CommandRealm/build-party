tag @a[team=spectator] add playing
gamemode adventure @a[tag=playing]
execute as @a[tag=playing,team=!blue,team=!orange,team=!green,team=!pink,team=!gray] at @s run function general:rank
stopsound @a[tag=playing]
title @a[tag=playing] times 0 25 5
scoreboard players reset @a[tag=playing] open_e_chest
effect clear @a[tag=playing]
clear @a[tag=playing]
scoreboard players set $game state 0
scoreboard players set @a[tag=playing] ready 1
tp @a[tag=playing] 0 66 0 0 -15
title @a[tag=playing] times 0 20 5
tag @a[tag=playing] remove playing
fill -32 8 8 -32 1 8 air
scoreboard objectives setdisplay sidebar
bossbar remove minecraft:timer
scoreboard objectives remove rate

data modify entity @e[type=area_effect_cloud,tag=start_button_text,limit=1] CustomNameVisible set value 1b
data modify entity @e[type=area_effect_cloud,tag=start_button_text,limit=1] CustomName set value '[{"text":"- ","color":"gray"},{"text":"✦ ","color":"gold"},{"text":"Start","color":"yellow","bold":true},{"text":" ✦ ","color":"gold"},{"text":" -","color":"gray"}]'

##Resetting the button
scoreboard players set $button pregame 5

scoreboard objectives remove new_theme

forceload remove all