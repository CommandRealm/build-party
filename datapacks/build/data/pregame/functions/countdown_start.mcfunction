scoreboard objectives remove playing
execute if score $number mode matches 0 run scoreboard objectives add playing dummy [{"text":"- ","color":"yellow","bold":true},{"text":"Playing","color":"yellow","bold":false},{"text":" Guess Mode","color":"gold","bold":false},{"text":" -","color":"gold","bold":true}]
execute if score $number mode matches 1 if score $number team matches 1 run scoreboard objectives add playing dummy [{"text":"- ","color":"yellow","bold":true},{"text":"Playing","color":"yellow","bold":false},{"text":" Versus Mode","color":"dark_blue","bold":false},{"text":" -","color":"dark_blue","bold":true}]
execute if score $number mode matches 1 if score $number team matches 2.. run scoreboard objectives add playing dummy [{"text":"- ","color":"yellow","bold":true},{"text":"Playing","color":"yellow","bold":false},{"text":" Teams","color":"aqua","bold":false},{"text":" Versus","color":"#ff4e00","bold":false},{"text":" Mode","color":"green","bold":false},{"text":" -","color":"dark_blue","bold":true}]
scoreboard objectives setdisplay sidebar playing
scoreboard players set $time startup_timer 100
scoreboard players set $time alternate_second 1
scoreboard players reset @a intro
tag @a remove looking_for_movement
tag @a remove intro_in_progress


data modify entity @e[type=area_effect_cloud,tag=start_button_text,limit=1] CustomName set value '[{"text":"- ","color":"gray"},{"text":"✦ ","color":"gold"},{"text":"Cancel","color":"red","bold":true},{"text":" ✦ ","color":"gold"},{"text":" -","color":"gray"}]'