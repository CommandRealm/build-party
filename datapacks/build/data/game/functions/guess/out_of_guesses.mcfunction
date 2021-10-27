##Called when we run out of guesses.

team join no_guess
gamemode spectator @s
execute as @a[x=0,y=66,z=0,distance=500..] at @s run playsound minecraft:entity.wither_skeleton.death master @s ~ ~ ~ 1 0
tellraw @a[x=0,y=0,z=0,distance=500..] [{"selector":"@s"},{"text":" has run out of guesses.","color":"red"}]