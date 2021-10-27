team modify guessing prefix {"text":""}
tellraw @a [{"selector":"@s","color":"gold"},{"text":" has guessed correctly!","color":"yellow"}]
team modify guessing prefix [{"text":"[","color":"yellow","bold":true},{"text":"-","bold":false},{"text":"] ","bold":true}]
scoreboard players add @s stats_guessing 1
scoreboard players add @a[tag=builder,tag=playing] stats_guessed 1

scoreboard players add $correct_guesses game 1

execute if score $starting_players game matches ..3 if score $correct_guesses game matches 1 run scoreboard players add @s points 1
execute if score $starting_players game matches ..3 if score $correct_guesses game matches 1 run tellraw @s [{"text":"+2","color":"gold","bold":true},{"text":" points!","color":"yellow","bold":false}]
execute if score $starting_players game matches ..3 if score $correct_guesses game matches 2.. if entity @a[team=guessed,tag=playing] run tellraw @s [{"text":"+1","color":"gold","bold":true},{"text":" point!","color":"yellow","bold":false}]

execute if score $starting_players game matches 4.. if score $correct_guesses game matches 1 run scoreboard players add @s points 2
execute if score $starting_players game matches 4.. if score $correct_guesses game matches 1 run tellraw @s [{"text":"+3","color":"gold","bold":true},{"text":" points!","color":"yellow","bold":false}]

execute if score $starting_players game matches 4.. if score $correct_guesses game matches 2 run scoreboard players add @s points 1
execute if score $starting_players game matches 4.. if score $correct_guesses game matches 2 run tellraw @s [{"text":"+2","color":"gold","bold":true},{"text":" points!","color":"yellow","bold":false}]


execute if score $starting_players game matches 4.. if score $correct_guesses game matches 3 if entity @a[team=guessed,tag=playing] run tellraw @s [{"text":"+1","color":"gold","bold":true},{"text":" point!","color":"yellow","bold":false}]



team join guessed
gamemode spectator @s
execute if score @s guess_sounds matches 0 as @a[x=0,y=66,z=0,distance=500..] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 2
execute if score @s guess_sounds matches 1 as @a[x=0,y=66,z=0,distance=500..] at @s run playsound minecraft:block.anvil.use master @s ~ ~ ~ 1 1
execute if score @s guess_sounds matches 2 as @a[x=0,y=66,z=0,distance=500..] at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1 2
execute if score @s guess_sounds matches 3 as @a[x=0,y=66,z=0,distance=500..] at @s run playsound minecraft:block.amethyst_cluster.place master @s ~ ~ ~ 1 1
execute if score @s guess_sounds matches 4 as @a[x=0,y=66,z=0,distance=500..] at @s run playsound minecraft:entity.ghast.warn master @s ~ ~ ~ 1 1
execute if score @s guess_sounds matches 5 as @a[x=0,y=66,z=0,distance=500..] at @s run playsound minecraft:entity.skeleton.converted_to_stray master @s ~ ~ ~ 1 1.5
execute if score @s guess_sounds matches 6 as @a[x=0,y=66,z=0,distance=500..] at @s run playsound minecraft:item.trident.riptide_1 master @s ~ ~ ~ 0.5 1
execute if score @s guess_sounds matches 6 as @a[x=0,y=66,z=0,distance=500..] at @s run playsound minecraft:item.trident.thunder master @s ~ ~ ~ 1 1
execute if score @s guess_sounds matches 7 as @a[x=0,y=66,z=0,distance=500..] at @s run playsound minecraft:entity.donkey.angry master @s ~ ~ ~ 1 1
execute if score @s guess_sounds matches 8 as @a[x=0,y=66,z=0,distance=500..] at @s run playsound minecraft:entity.goat.screaming.ambient master @s ~ ~ ~ 1 0.5
execute if score @s guess_sounds matches 8 as @a[x=0,y=66,z=0,distance=500..] at @s run playsound minecraft:entity.goat.screaming.ambient master @s ~ ~ ~ 1 0.6
execute if score @s guess_sounds matches 8 as @a[x=0,y=66,z=0,distance=500..] at @s run playsound minecraft:entity.goat.screaming.ambient master @s ~ ~ ~ 1 0.7
execute if score @s guess_sounds matches 8 as @a[x=0,y=66,z=0,distance=500..] at @s run playsound minecraft:entity.goat.screaming.ambient master @s ~ ~ ~ 1 0.8
execute if score @s guess_sounds matches 8 as @a[x=0,y=66,z=0,distance=500..] at @s run playsound minecraft:entity.goat.screaming.ambient master @s ~ ~ ~ 1 0.9
execute if score @s guess_sounds matches 8 as @a[x=0,y=66,z=0,distance=500..] at @s run playsound minecraft:entity.goat.screaming.ambient master @s ~ ~ ~ 1 1.0
execute if score @s guess_sounds matches 8 as @a[x=0,y=66,z=0,distance=500..] at @s run playsound minecraft:entity.goat.screaming.ambient master @s ~ ~ ~ 1 1.0
execute if score @s guess_sounds matches 8 as @a[x=0,y=66,z=0,distance=500..] at @s run playsound minecraft:entity.goat.screaming.ambient master @s ~ ~ ~ 1 1.0
execute if score @s guess_sounds matches 9 as @a[x=0,y=66,z=0,distance=500..] at @s run playsound minecraft:entity.ender_dragon.growl master @s ~ ~ ~ 1 1.15
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