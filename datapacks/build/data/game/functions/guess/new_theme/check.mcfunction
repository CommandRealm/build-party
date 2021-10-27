##called to check if we can get a new theme

scoreboard players reset @s new_theme

execute unless score $30_sec game matches 1.. run function game:guess/new_theme/error
execute if score $30_sec game matches 1.. run function game:guess/new_theme/new_theme
