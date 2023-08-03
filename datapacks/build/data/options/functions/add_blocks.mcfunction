setblock 9 73 60 air
playsound minecraft:ui.button.click master @s
scoreboard players add $number nine_block 1
execute if score $number nine_block matches 2.. run scoreboard players set $number nine_block 0
execute if score $number nine_block matches ..-1 run scoreboard players set $number nine_block 1

execute if score $number nine_block matches 0 run setblock 9 73 60 bamboo_wall_sign[facing=west]{front_text:{messages:['{"text":"8 Random","color":"light_purple","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}', '{"text":"blocks:","color":"light_purple","bold":true}', '{"text":"Off","color":"red"}', '{"text":"<<<         >>>","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:click_blocks"}}']}}
execute if score $number nine_block matches 1 run setblock 9 73 60 bamboo_wall_sign[facing=west]{front_text:{messages:['{"text":"8 Random","color":"light_purple","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}', '{"text":"blocks:","color":"light_purple","bold":true}', '{"text":"On","color":"green"}', '{"text":"<<<         >>>","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:click_blocks"}}']}}

particle minecraft:cloud 10 73.5 60 0 0 0 0.05 10



kill @e[tag=display_blocks]
execute if score $number nine_block matches 0 run summon armor_stand 10 73.625 60 {Tags:["display_blocks","model"],Small:1b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:pearlescent_froglight",Count:1b}]}
execute if score $number nine_block matches 1.. run summon armor_stand 10 73.625 60 {Tags:["display_blocks","model"],Small:1b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:verdant_froglight",Count:1b}]}