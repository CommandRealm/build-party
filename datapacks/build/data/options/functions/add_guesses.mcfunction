setblock -3 73 65 air
playsound minecraft:ui.button.click master @s
scoreboard players add $number limited_guesses 1
execute if score $number limited_guesses matches 6.. run scoreboard players set $number limited_guesses 0
execute if score $number limited_guesses matches ..-1 run scoreboard players set $number limited_guesses 5

execute if score $number limited_guesses matches 0 run setblock -3 73 65 bamboo_wall_sign[facing=north]{front_text:{messages:['{"text":"Guesses per","color":"blue","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}', '{"text":"build:","color":"blue","bold":true}', '{"text":"Infinite","color":"red"}', '{"text":"<<<         >>>","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:click_guesses"}}']}}
execute if score $number limited_guesses matches 1.. run setblock -3 73 65 bamboo_wall_sign[facing=north]{front_text:{messages:['{"text":"Guesses per","color":"blue","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}', '{"text":"build:","color":"blue","bold":true}', '{"score":{"objective":"limited_guesses","name":"$number"},"color":"green"}', '{"text":"<<<         >>>","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:click_guesses"}}']}}

particle minecraft:cloud -3 74.5 66 0 0 0 0.05 10



kill @e[tag=display_guesses]
execute if score $number limited_guesses matches 0 run summon armor_stand -3 73.625 66 {Tags:["display_guesses","model"],Small:1b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:lime_glazed_terracotta ",Count:1b}]}
execute if score $number limited_guesses matches 1.. run summon armor_stand -3 73.625 66 {Tags:["display_guesses","model"],Small:1b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:orange_glazed_terracotta",Count:1b}]}