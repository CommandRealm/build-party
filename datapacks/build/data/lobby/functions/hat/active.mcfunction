execute as @a[tag=replace_hat,tag=!reset_movement] at @s run function lobby:hat/reset_movement
execute as @a[tag=replace_hat,tag=reset_movement,scores={intro_walk=1..}] at @s run function lobby:hat/moved
execute as @a[tag=replace_hat,tag=reset_movement,scores={intro_sprint=1..}] at @s run function lobby:hat/moved
execute as @a[tag=replace_hat,tag=reset_movement,scores={intro_crouch=1..}] at @s run function lobby:hat/moved
execute as @a[tag=replace_hat,tag=reset_movement,scores={intro_jump=1..}] at @s run function lobby:hat/moved