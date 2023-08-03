setblock 11 73 64 air
playsound minecraft:ui.button.click master @s
scoreboard players add $number announce_guesses 1
execute if score $number announce_guesses matches 2.. run scoreboard players set $number announce_guesses 0
execute if score $number announce_guesses matches ..-1 run scoreboard players set $number announce_guesses 1

execute if score $number announce_guesses matches 0 run setblock 11 73 64 bamboo_wall_sign[facing=west]{front_text:{messages:['{"text":"Announce","color":"gray","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}', '{"text":"guesses:","color":"white","bold":true}', '{"text":"Off","color":"red"}', '{"text":"<<<         >>>","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:click_say_guesses"}}']}}
execute if score $number announce_guesses matches 1 run setblock 11 73 64 bamboo_wall_sign[facing=west]{front_text:{messages:['{"text":"Announce","color":"gray","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}', '{"text":"guesses:","color":"white","bold":true}', '{"text":"On","color":"green"}', '{"text":"<<<         >>>","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:click_say_guesses"}}']}}

particle minecraft:cloud 12 73.5 64 0 0 0 0.05 10



kill @e[tag=display_say_guesses]
execute if score $number announce_guesses matches 0 run summon armor_stand 12 73.625 64 {Tags:["display_say_guesses","model"],Small:1b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:red_shulker_box",Count:1b}]}
execute if score $number announce_guesses matches 1.. run summon armor_stand 12 73.625 64 {Tags:["display_say_guesses","model"],Small:1b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:lime_shulker_box",Count:1b}]}