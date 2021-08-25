scoreboard players remove $time cooldown 1
execute if score $time cooldown matches 1 as @a[tag=builder] at @s run function game:clone_build
execute if score $time cooldown matches 1.. run schedule function game:guess/cooldown 1t
execute if score $time cooldown matches 0 run function game:guess/check_players