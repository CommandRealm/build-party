team modify guessing prefix {"text":""}
tellraw @a [{"selector":"@s","color":"gold"},{"text":" has guessed correctly!","color":"yellow"}]
team modify guessing prefix [{"text":"[","color":"yellow","bold":true},{"text":"-","bold":false},{"text":"] ","bold":true}]
scoreboard players add @s stats_guessing 1
scoreboard players add @a[tag=builder,tag=playing] stats_guessed 1
execute unless entity @a[team=guessed,tag=playing] run scoreboard players add @s points 1
execute unless entity @a[team=guessed,tag=playing] run tellraw @s [{"text":"+2","color":"gold","bold":true},{"text":" points!","color":"yellow","bold":false}]
execute if entity @a[team=guessed,tag=playing] run tellraw @s [{"text":"+1","color":"gold","bold":true},{"text":" point!","color":"yellow","bold":false}]
team join guessed
gamemode spectator @s
execute as @a[tag=!correct_guess] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 2
tag @s remove correct_guess
scoreboard players operation $check_adv game_timer = $time set_timer
scoreboard players operation $check_adv game_timer -= $time game_timer
scoreboard players add @s points 1
scoreboard players add @a[tag=builder] points 1
execute as @s[tag=playing] at @s run playsound minecraft:block.note_block.guitar master @s ~ ~ ~ 1 1
execute as @s[tag=playing] at @s run playsound minecraft:block.note_block.guitar master @s ~ ~ ~ 1 1.25
execute as @s[tag=playing] at @s run playsound minecraft:block.note_block.guitar master @s ~ ~ ~ 1 1.5
execute as @s[tag=playing] at @s run playsound minecraft:block.note_block.guitar master @s ~ ~ ~ 1 0.75
execute as @s[tag=playing] at @s run playsound minecraft:block.note_block.guitar master @s ~ ~ ~ 1 0.5
execute as @s[tag=playing] at @s run playsound minecraft:block.note_block.guitar master @s ~ ~ ~ 1 1.75