execute as @a[scores={rc=1..}] at @s run function pregame:right_click
scoreboard players set $number players_on 0
execute as @a run scoreboard players add $number players_on 1
scoreboard players set $number players_ready 0
execute if entity @a[tag=admin] run scoreboard players add $number players_ready 1
execute as @a[scores={ready=1}] run scoreboard players add $number players_ready 1
execute if score $number players_ready matches 1 run title @a[scores={ready=1}] title {"text":"","color":""}
execute if score $number players_ready matches 1 run title @a[scores={ready=1}] subtitle {"text":"Waiting for another player . . .","color":"gold"}
execute unless score $number players_ready matches 2.. if score $time startup_timer matches 0.. run function pregame:end_countdown
execute if score $time startup_timer matches -1 if score $number players_ready matches 2.. run function pregame:countdown_start
execute if score $time startup_timer matches 0.. run function pregame:countdown
execute as @a[gamemode=adventure] at @s unless entity @s[nbt={Inventory:[{Slot:4b,id:"minecraft:knowledge_book"}]}] run function pregame:get_book