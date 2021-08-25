scoreboard players set $check_tie theme_results 0
execute as @e[tag=v_option,scores={theme_results=0}] at @s run scoreboard players add $check_tie theme_results 1
execute if score $check_tie theme_results matches 2.. run scoreboard players set @e[tag=v_option,scores={theme_results=0},sort=random,limit=1] theme_results -1