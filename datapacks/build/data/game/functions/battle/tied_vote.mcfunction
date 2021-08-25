execute as @e[tag=v_option] at @s unless entity @s[scores={theme_results=0}] run scoreboard players set @s theme_results -10000
scoreboard players set @e[tag=v_option,scores={theme_results=0}] theme_results -10
scoreboard players set @e[tag=v_option,scores={theme_results=-10},sort=random,limit=1] theme_results 0
function game:battle/winning_vote