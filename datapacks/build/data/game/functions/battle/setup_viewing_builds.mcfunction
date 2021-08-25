scoreboard players set $game state 2
tag @a remove shown_build
tag @a remove show_build
gamemode spectator @a[tag=playing]
function game:battle/view_build
scoreboard objectives remove final_rate
scoreboard objectives remove rate
scoreboard objectives add rate trigger
scoreboard players enable @a[tag=playing] rate
scoreboard players add @a rate 0
scoreboard objectives add final_rate dummy
scoreboard players add @a final_rate 0
stopsound @a[tag=playing]