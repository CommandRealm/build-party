effect clear @a[tag=playing]
tag @r[tag=playing,tag=!shown_build] add show_build
execute if score $number team matches 2.. run function game:battle/teams/view_build
scoreboard players set @a[tag=playing] rate 0
scoreboard players set @a[tag=playing] final_rate 0
effect give @a[tag=playing] blindness 1 255 true
execute as @a[tag=show_build,tag=playing] at @s run function game:tp_to_build
execute as @a[tag=show_build,tag=playing] at @s run tp @a[tag=playing,tag=!show_build] @s
execute if score $number team matches 1 as @a[tag=show_build,tag=playing] at @s run function game:tp_to_sponsor
execute if score $number team matches 1 run schedule function game:clone_build_to_sponsor 2t
execute if score $number team matches 2.. run function game:battle/teams/set_rating_marker
schedule function game:battle/clone_build_under_lobby 2t
execute if score $number team matches 1 run title @a[tag=playing] title [{"selector":"@a[tag=show_build]","color":"yellow","bold":false},{"text":"'s"}]
title @a[tag=playing] subtitle [{"nbt":"Theme","storage":"minecraft:theme","interpret":true,"color":"yellow"}]
scoreboard players set $time game_timer 400
bossbar remove timer
bossbar add timer {"text":"Rating time remaining","color":"blue","underlined":true}
bossbar set timer color red
bossbar set timer style progress
bossbar set minecraft:timer players @a[tag=playing]
bossbar set minecraft:timer max 400
bossbar set minecraft:timer value 400
playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1000000 0
playsound minecraft:block.note_block.guitar master @a ~ ~ ~ 1000000 0
execute if score $number team matches 1 run advancement grant @a[tag=playing,tag=show_build] only advancements:custom/visit_sponsor
tellraw @a[tag=playing] {"text":"\n"}
execute if score $number team matches 1 run tellraw @a[tag=playing,tag=!show_build] [{"text":"Please rate ","color":"yellow"},{"selector":"@a[tag=show_build]","color":"gold"},{"text":"'s","color":"gold"},{"text":" build.","color":"yellow"}]
execute if score $number team matches 2.. run function game:battle/teams/rating_time
tellraw @a[tag=playing,tag=!show_build] [{"text":"[1✮]","bold":true,"color":"dark_gray","clickEvent":{"action":"run_command","value":"/trigger rate set 1"}},{"text":" ","clickEvent":{"action":"run_command","value":"/trigger rate set 100"}},{"text":"[2✮]","bold":true,"color":"dark_red","clickEvent":{"action":"run_command","value":"/trigger rate set 2"}},{"text":" ","clickEvent":{"action":"run_command","value":"/trigger rate set 100"}},{"text":"[3✮]","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/trigger rate set 3"}},{"text":" ","clickEvent":{"action":"run_command","value":"/trigger rate set 100"}},{"text":"[4✮]","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger rate set 4"}},{"text":" ","clickEvent":{"action":"run_command","value":"/trigger rate set 100"}},{"text":"[5✮]","bold":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/trigger rate set 5"}},{"text":" ","clickEvent":{"action":"run_command","value":"/trigger rate set 100"}},{"text":"[6✮]","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/trigger rate set 6"}},{"text":" ","clickEvent":{"action":"run_command","value":"/trigger rate set 100"}},{"text":"[7✮]","bold":true,"color":"aqua","clickEvent":{"action":"run_command","value":"/trigger rate set 7"}},{"text":" ","clickEvent":{"action":"run_command","value":"/trigger rate set 100"}},{"text":"[8✮]","bold":true,"color":"dark_aqua","clickEvent":{"action":"run_command","value":"/trigger rate set 8"}},{"text":" ","clickEvent":{"action":"run_command","value":"/trigger rate set 100"}},{"text":"[9✮]","bold":true,"color":"blue","clickEvent":{"action":"run_command","value":"/trigger rate set 9"}},{"text":" ","clickEvent":{"action":"run_command","value":"/trigger rate set 100"}},{"text":"[10✮]","bold":true,"color":"dark_blue","clickEvent":{"action":"run_command","value":"/trigger rate set 10"}},{"text":" ","clickEvent":{"action":"run_command","value":"/trigger rate set 100"}}]