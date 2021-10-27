setblock -1 73 64 air
playsound minecraft:ui.button.click master @s
scoreboard players add $time set_battle_timer 1200
execute if score $time set_battle_timer matches 12001.. run scoreboard players set $time set_battle_timer 1200
execute if score $time set_battle_timer matches ..0 run scoreboard players set $time set_battle_timer 12000

scoreboard players operation $time set_battle_timer /= $minute number
execute unless score $time set_battle_timer matches 1 run setblock -1 73 64 dark_oak_wall_sign[facing=north]{Text1:'{"text":"Versus mode","color":"dark_blue","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}',Text2:'{"text":"build time:","color":"dark_blue","bold":true}',Text3:'[{"score":{"objective":"set_battle_timer","name":"$time"},"color":"gold","bold":true},{"text":" minutes","color":"gold","bold":true}]',Text4:'{"text":"<<<         >>>","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:click_v_time"}}'}
execute if score $time set_battle_timer matches 1 run setblock -1 73 64 dark_oak_wall_sign[facing=north]{Text1:'{"text":"Versus mode","color":"dark_blue","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}',Text2:'{"text":"build time:","color":"dark_blue","bold":true}',Text3:'[{"score":{"objective":"set_battle_timer","name":"$time"},"color":"gold","bold":true},{"text":" minute","color":"gold","bold":true}]',Text4:'{"text":"<<<         >>>","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:click_v_time"}}'}
scoreboard players operation $time set_battle_timer *= $minute number

particle minecraft:cloud -1 74.5 65 0 0 0 0.05 10



kill @e[tag=display_timer]
summon armor_stand -1 73.625 65 {Tags:["display_timer","model"],Small:1b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:blue_wool",Count:1b}]}