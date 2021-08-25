scoreboard players set $number in_game 0
execute if entity @a[tag=playing,team=blue] run scoreboard players add $number in_game 1
execute if entity @a[tag=playing,team=orange] run scoreboard players add $number in_game 1
execute if entity @a[tag=playing,team=green] run scoreboard players add $number in_game 1
execute if entity @a[tag=playing,team=pink] run scoreboard players add $number in_game 1
execute if entity @a[tag=playing,team=gray] run scoreboard players add $number in_game 1
execute if score $number in_game matches ..1 unless entity @a[tag=playing,tag=admin] run function end:no_players