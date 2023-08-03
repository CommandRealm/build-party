scoreboard players add @s resetting 1
execute if entity @s[scores={resetting=1}] run function general:reset
gamemode adventure @s
function general:rank
tp @s 0 66 0 0 -5
execute if score $time startup_timer matches -1 run tag @s add looking_for_movement
clear @s
effect clear @s
scoreboard players add @s new_player 1
playsound minecraft:block.note_block.pling master @a ~ ~ ~ 10000000000000000 1.85
title @s times 0 10 5
tag @s remove playing
tag @s remove builder
tag @s remove built
spawnpoint @s 0 66 0
scoreboard players add @s sponsor 0
scoreboard players set @s ready 1
scoreboard players enable @s o_book
scoreboard players add @s sel_hat 0
scoreboard players reset @s intro_walk
scoreboard players reset @s intro_sprint
scoreboard players reset @s intro_crouch
scoreboard players reset @s intro_jump
scoreboard players reset @s points
tag @s remove intro_in_progress
scoreboard players set @s team_swap 1
xp set @s 0 levels
xp set @s 0 points
tag @s remove reset_movement
tag @s remove replace_hat
tag @s remove delay_dnb_map
tag @s remove shown_build
tag @s remove got_placement
bossbar set minecraft:lobby players @a[tag=!playing,gamemode=adventure]
tellraw @s [{"text":"","bold":false},{"text":"▶ ","color":"blue","bold":true},{"text":"Welcome to Build Party!","color":"yellow"},{"text":"","bold":false},{"text":"\n▶ ","color":"blue","bold":true},{"text":"In this world, we all have to compete to be the best builder of all time! ","color":"gold"},{"text":"\n","bold":false},{"text":"▶ ","color":"blue","bold":true},{"text":"\"Companies\" from the big city will offer to \"sponsor\" you, meaning you can use their area to build! ","color":"yellow"}]
tellraw @s[scores={sponsor=0}] [{"text":"","bold":false},{"text":"▶ ","color":"blue","bold":true},{"text":"You don't yet have a \"sponsor\"! After playing some games you may unlock offers from \"companies.\"","color":"gray"},{"text":" For now, you will be called a: "},{"text":"(","color":"gray","bold":true},{"text":"Free Agent","color":"dark_aqua","bold":false},{"text":") ","color":"gray","bold":true}]
tellraw @s[scores={sponsor=1}] [{"text":"","bold":false},{"text":"▶ ","color":"blue","bold":true},{"text":"Your current \"sponsorship\" is with: ","color":"gold"},{"text":"(","color":"gray","bold":true},{"text":"Redstone INC.","color":"red","bold":false},{"text":") ","color":"gray","bold":true}]
tellraw @s[scores={sponsor=2}] [{"text":"","bold":false},{"text":"▶ ","color":"blue","bold":true},{"text":"Your current \"sponsorship\" is with: ","color":"gold"},{"text":"(","color":"gold","bold":true},{"text":"Marm's Farm","color":"green","bold":false},{"text":") ","color":"gold","bold":true}]
tellraw @s[scores={sponsor=3}] [{"text":"","bold":false},{"text":"▶ ","color":"blue","bold":true},{"text":"Your current \"sponsorship\" is with: ","color":"gold"},{"text":"(","color":"dark_red","bold":true},{"text":"F","color":"red","bold":false},{"text":"u","color":"white","bold":false},{"text":"n","color":"red","bold":false},{"text":" G","color":"white","bold":false},{"text":"u","color":"red","bold":false},{"text":"y","color":"white","bold":false},{"text":" F","color":"red","bold":false},{"text":"u","color":"white","bold":false},{"text":"n","color":"red","bold":false},{"text":"g","color":"white","bold":false},{"text":"i","color":"red","bold":false},{"text":") ","color":"dark_red","bold":true}]
tellraw @s[scores={sponsor=4}] [{"text":"","bold":false},{"text":"▶ ","color":"blue","bold":true},{"text":"Your current \"sponsorship\" is with: ","color":"gold"},{"text":"(","color":"dark_purple","bold":true},{"text":"King & Sons","color":"gold","bold":false},{"text":") ","color":"dark_purple","bold":true}]
tellraw @s[scores={sponsor=5}] [{"text":"","bold":false},{"text":"▶ ","color":"blue","bold":true},{"text":"Your current \"sponsorship\" is with: ","color":"gold"},{"text":"(","color":"dark_aqua","bold":true},{"text":"The Byte","color":"white","bold":false},{"text":") ","color":"dark_aqua","bold":true}]
tellraw @s[scores={sponsor=6}] [{"text":"","bold":false},{"text":"▶ ","color":"blue","bold":true},{"text":"Your current \"sponsorship\" is with: ","color":"gold"},{"text":"(","color":"green","bold":true},{"text":"Woody's Lumber","color":"#9f5b1f","bold":false},{"text":") ","color":"green","bold":true}]
tellraw @s[scores={sponsor=7}] [{"text":"","bold":false},{"text":"▶ ","color":"blue","bold":true},{"text":"Your current \"sponsorship\" is with: ","color":"gold"},{"text":"(","color":"yellow","bold":true},{"text":"Beetopia","color":"gold","bold":false},{"text":") ","color":"yellow","bold":true}]
tellraw @s[scores={sponsor=8}] [{"text":"","bold":false},{"text":"▶ ","color":"blue","bold":true},{"text":"Your current \"sponsorship\" is with: ","color":"gold"},{"text":"(","color":"gold","bold":true},{"text":"Dimension Convention","color":"dark_red","bold":false},{"text":") ","color":"gold","bold":true}]

tellraw @s[scores={sponsor=9}] [{"text":"(","color":"dark_gray","bold":true},{"text":"Warren's","bold":false,"color":"#92763b"},{"text":" Wizardry","color":"#5c3114","bold":false},{"text":") ","color":"dark_gray","bold":true}]
tellraw @s[scores={sponsor=10}] [{"text":"","bold":false},{"text":"▶ ","color":"blue","bold":true},{"text":"Your current \"sponsorship\" is with: ","color":"gold"},{"text":"(","color":"gray","bold":true},{"text":"Ha","color":"white","bold":false},{"text":"z","color":"#76a391","bold":false},{"text":"ardous","color":"white","bold":false},{"text":" Mechanics","color":"#9b6e5e","bold":false},{"text":") ","color":"gray","bold":true}]
tellraw @s[scores={sponsor=11}] [{"text":"","bold":false},{"text":"▶ ","color":"blue","bold":true},{"text":"Your current \"sponsorship\" is with: ","color":"gold"},{"text":"(","color":"yellow","bold":true},{"text":"Ralph's ","color":"gold","bold":false},{"text":"Ruins","color":"gray","bold":false},{"text":") ","color":"yellow","bold":true}]

# resetting bossbars
execute if score $number mode matches 0 run bossbar set timer players @a[tag=playing]
execute if score $number mode matches 1 run bossbar set timer players @a[tag=playing]