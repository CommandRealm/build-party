scoreboard players set $number in_game 0
execute as @a[tag=playing] at @s run scoreboard players add $number in_game 1
execute if score $number in_game matches ..1 unless entity @a[tag=playing,tag=admin] run function end:no_players