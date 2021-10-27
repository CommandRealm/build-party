setblock 1 73 64 air
playsound minecraft:ui.button.click master @s
scoreboard players add $number mode 1
execute if score $number mode matches 2.. run scoreboard players set $number mode 0
execute if score $number mode matches ..-1 run scoreboard players set $number mode 1

execute if score $number mode matches 0 run setblock 1 73 64 dark_oak_wall_sign[facing=north]{Text1:'{"text":"","color":"blue","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}',Text2:'{"text":"Mode:","color":"#ff000c","bold":true}',Text3:'{"text":"Guess","color":"yellow"}',Text4:'{"text":"<<<         >>>","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:click_mode"}}'}
execute if score $number mode matches 1 run setblock 1 73 64 dark_oak_wall_sign[facing=north]{Text1:'{"text":"","color":"blue","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}',Text2:'{"text":"Mode:","color":"#ff000c","bold":true}',Text3:'{"text":"Versus","color":"#0006ff"}',Text4:'{"text":"<<<         >>>","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:click_mode"}}'}

particle minecraft:cloud 1 74.5 65 0 0 0 0.05 10



kill @e[tag=display_mode]
execute if score $number mode matches 0 run summon armor_stand 1 73.625 65 {Tags:["display_mode","model"],Small:1b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:yellow_glazed_terracotta",Count:1b}]}
execute if score $number mode matches 1 run summon armor_stand 1 73.625 65 {Tags:["display_mode","model"],Small:1b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:blue_glazed_terracotta",Count:1b}]}

execute if score $number mode matches 0 run scoreboard players remove $time set_timer 1200
execute if score $number mode matches 1 run scoreboard players remove $time set_battle_timer 1200
execute if score $number mode matches 0 run function options:add_g_time
execute if score $number mode matches 1 run function options:add_v_time

execute if score $number team matches 1 run tag @r add no_particle
execute unless entity @a[tag=no_particle] if score $number mode matches 0 run scoreboard players set $number team 0
execute unless entity @a[tag=no_particle] if score $number mode matches 0 run function options:add_team
tag @a remove no_particle

execute if score $number mode matches 0 run scoreboard objectives modify playing displayname [{"text":"- ","color":"yellow","bold":true},{"text":"Playing","color":"yellow","bold":false},{"text":" Guess Mode","color":"gold","bold":false},{"text":" -","color":"gold","bold":true}]
execute if score $number mode matches 1 if score $number team matches 1 run scoreboard objectives modify playing displayname [{"text":"- ","color":"yellow","bold":true},{"text":"Playing","color":"yellow","bold":false},{"text":" Versus Mode","color":"dark_blue","bold":false},{"text":" -","color":"dark_blue","bold":true}]
execute if score $number mode matches 1 if score $number team matches 2.. run scoreboard objectives modify playing displayname [{"text":"- ","color":"yellow","bold":true},{"text":"Playing","color":"yellow","bold":false},{"text":" Teams","color":"aqua","bold":false},{"text":" Versus","color":"#ff4e00","bold":false},{"text":" Mode","color":"green","bold":false},{"text":" -","color":"dark_blue","bold":true}]