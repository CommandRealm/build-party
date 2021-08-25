scoreboard objectives setdisplay sidebar
scoreboard players operation $points points > @a points
execute as @a[tag=playing] at @s run scoreboard players operation @s points -= $points points
scoreboard players set $number check_tie 0
execute as @a[tag=playing,scores={points=0}] at @s run scoreboard players add $number check_tie 1
team leave @a[tag=playing,scores={points=0}]
execute if score $number check_tie matches 1 run tellraw @a [{"text":" | ","color":"gold","bold":true},{"selector":"@a[scores={points=0},tag=playing]","color":"gold","bold":false},{"text":" has won Build Party!","color":"yellow","bold":false}]
execute if score $number check_tie matches 2.. run tellraw @a [{"text":" | ","color":"gold","bold":true},{"selector":"@a[scores={points=0},tag=playing]","color":"gold","bold":false},{"text":" have tied for the win in Build Party!","color":"yellow","bold":false}]
tag @a[scores={points=0},tag=playing] add just_won
advancement grant @a[scores={points=0},tag=playing] only minecraft:custom/win_guess
execute as @r[scores={points=0},tag=playing] at @s run function game:clone_build_to_lobby
function end:full