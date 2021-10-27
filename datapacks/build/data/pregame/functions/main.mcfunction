execute as @a[scores={rc=1..}] at @s run function pregame:right_click
scoreboard players set $number players_on 0
execute as @a run scoreboard players add $number players_on 1
scoreboard players set $number players_ready 0
execute if entity @a[tag=admin] run scoreboard players add $number players_ready 1
execute as @a[scores={ready=1}] run scoreboard players add $number players_ready 1
execute if score $number mode matches 0 unless score $number players_ready matches 2..50 if score $time startup_timer matches 0.. run function pregame:end_countdown
execute if score $number mode matches 1 unless score $number players_ready matches 2..11 if score $time startup_timer matches 0.. run function pregame:end_countdown

execute if block 0 69 12 stone_button[powered=true] run function pregame:press_button
execute if score $time startup_timer matches 0.. run function pregame:countdown
execute as @a[gamemode=adventure] at @s unless entity @s[nbt={Inventory:[{Slot:4b,id:"minecraft:knowledge_book"}]}] run function pregame:get_book

##Button
execute if score $button pregame matches 1.. run function pregame:button/main

##You will play vs you won't play
title @a[x=0,y=66,z=0,distance=..500,gamemode=adventure,scores={ready=0},tag=!parkour,tag=!tutorial] actionbar [{"text":"You will ","color":"gold"},{"text":"not play.","color":"red"},{"text":" (","color":"gray","bold":true},{"score":{"objective":"players_ready","name":"$number"},"color":"white"},{"text":"/","color":"gray","bold":true},{"score":{"objective":"players_on","name":"$number"},"color":"white"},{"text":")","color":"gray","bold":true}]
title @a[x=0,y=66,z=0,distance=..500,gamemode=adventure,scores={ready=1},tag=!parkour,tag=!tutorial] actionbar [{"text":"You will ","color":"yellow"},{"text":"play.","color":"gold"},{"text":" (","color":"gray","bold":true},{"score":{"objective":"players_ready","name":"$number"},"color":"white"},{"text":"/","color":"gray","bold":true},{"score":{"objective":"players_on","name":"$number"},"color":"white"},{"text":")","color":"gray","bold":true}]
