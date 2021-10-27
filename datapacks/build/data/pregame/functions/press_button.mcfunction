##Called when someone presses the start button.

##Resetting the button and trapdor

setblock 0 69 12 air destroy
setblock 0 70 13 minecraft:iron_trapdoor[facing=east,half=bottom,open=false,powered=false,waterlogged=false]
setblock 0 68 13 minecraft:iron_trapdoor[facing=east,half=top,open=false,powered=false,waterlogged=false]
setblock -1 69 13 minecraft:iron_trapdoor[facing=west,half=bottom,open=true,powered=false,waterlogged=false]
setblock 1 69 13 minecraft:iron_trapdoor[facing=east,half=bottom,open=true,powered=false,waterlogged=false]

execute if score $time startup_timer matches 0.. run tag @p add temporary_tag
execute if score $time startup_timer matches 0.. run function pregame:end_countdown
execute if score $number mode matches 0 if score $number players_ready matches 2..50 unless score $time startup_timer matches 0.. unless entity @a[tag=temporary_tag] run function pregame:countdown_start
execute if score $number mode matches 1 if score $number players_ready matches 2..11 unless score $time startup_timer matches 0.. unless entity @a[tag=temporary_tag] run function pregame:countdown_start
execute if score $number players_ready matches ..1 run function pregame:not_enough_players
execute if score $number mode matches 0 if score $number players_ready matches 51.. unless score $time startup_timer matches 0.. unless entity @a[tag=temporary_tag] run function pregame:too_many_players
execute if score $number mode matches 1 if score $number players_ready matches 12.. unless score $time startup_timer matches 0.. unless entity @a[tag=temporary_tag] run function pregame:too_many_players

tag @a remove temporary_tag

##Setting up button delay
scoreboard players set $button pregame 10