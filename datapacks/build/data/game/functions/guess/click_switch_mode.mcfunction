scoreboard players set @s switch_mode 0
execute if entity @s[tag=builder] run function game:guess/switch_wrong
execute if entity @s[team=guessed] run function game:guess/switch_wrong
execute if entity @s[gamemode=adventure,tag=!switched_mode,team=guessed] run function game:guess/switch_to_spectator
execute if entity @s[gamemode=spectator,tag=!switched_mode,team=guessed] run function game:guess/switch_to_guess
tag @a remove switched_mode
playsound minecraft:block.note_block.guitar master @s ~ ~ ~ 100 1.95