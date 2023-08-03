setblock -1 73 64 air
playsound minecraft:ui.button.click master @s
scoreboard players add $time set_timer 1200
execute if score $time set_timer matches 6001.. run scoreboard players set $time set_timer 1200
execute if score $time set_timer matches ..0 run scoreboard players set $time set_timer 6000

scoreboard players operation $time set_timer /= $minute number
execute unless score $time set_timer matches 1 run setblock -1 73 64 bamboo_wall_sign[facing=north]{front_text:{messages:['{"text":"Guess mode","color":"yellow","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}', '{"text":"build time:","color":"yellow","bold":true}', '[{"score":{"objective":"set_timer","name":"$time"},"color":"gold","bold":true},{"text":" minutes","color":"gold","bold":true}]', '{"text":"<<<         >>>","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:click_g_time"}}']}}
execute if score $time set_timer matches 1 run setblock -1 73 64 bamboo_wall_sign[facing=north]{front_text:{messages:['{"text":"Guess mode","color":"yellow","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}', '{"text":"build time:","color":"yellow","bold":true}', '[{"score":{"objective":"set_timer","name":"$time"},"color":"gold","bold":true},{"text":" minute","color":"gold","bold":true}]', '{"text":"<<<         >>>","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:click_g_time"}}']}}
scoreboard players operation $time set_timer *= $minute number

particle minecraft:cloud -1 74.5 65 0 0 0 0.05 10



kill @e[tag=display_timer]
summon armor_stand -1 73.625 65 {Tags:["display_timer","model"],Small:1b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:yellow_wool",Count:1b}]}