setblock 10 73 62 air
playsound minecraft:ui.button.click master @s
scoreboard players add $number allow_entities 1
execute if score $number allow_entities matches 2.. run scoreboard players set $number allow_entities 0
execute if score $number allow_entities matches ..-1 run scoreboard players set $number allow_entities 1

execute if score $number allow_entities matches 0 run setblock 10 73 62 bamboo_wall_sign[facing=west]{front_text:{messages:['{"text":"Allow","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}', '{"text":"spawn eggs:","color":"red","bold":true}', '{"text":"Off","color":"red"}', '{"text":"<<<         >>>","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:click_entities"}}']}}
execute if score $number allow_entities matches 1 run setblock 10 73 62 bamboo_wall_sign[facing=west]{front_text:{messages:['{"text":"Allow","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}', '{"text":"spawn eggs:","color":"red","bold":true}', '{"text":"On","color":"green"}', '{"text":"<<<         >>>","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:click_entities"}}']}}

particle minecraft:cloud 11 73.5 62 0 0 0 0.05 10



kill @e[tag=display_entities]
execute if score $number allow_entities matches 0 run summon armor_stand 11 73.625 62 {Tags:["display_entities","model"],Small:1b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:red_concrete",Count:1b}]}
execute if score $number allow_entities matches 1.. run summon armor_stand 11 73.625 62 {Tags:["display_entities","model"],Small:1b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:lime_concrete",Count:1b}]}