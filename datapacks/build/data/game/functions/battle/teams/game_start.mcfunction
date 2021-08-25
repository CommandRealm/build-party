scoreboard players set $number check_teams 0
execute if entity @a[team=blue,tag=playing] run scoreboard players add $number check_teams 1
execute if entity @a[team=orange,tag=playing] run scoreboard players add $number check_teams 1
execute if entity @a[team=green,tag=playing] run scoreboard players add $number check_teams 1
execute if entity @a[team=pink,tag=playing] run scoreboard players add $number check_teams 1
execute if entity @a[team=gray,tag=playing] run scoreboard players add $number check_teams 1
execute if score $number check_teams matches ..1 run team join blue @r[tag=playing,team=!blue]
scoreboard players set $number check_teams 0
execute if entity @a[team=blue,tag=playing] run scoreboard players add $number check_teams 1
execute if entity @a[team=orange,tag=playing] run scoreboard players add $number check_teams 1
execute if entity @a[team=green,tag=playing] run scoreboard players add $number check_teams 1
execute if entity @a[team=pink,tag=playing] run scoreboard players add $number check_teams 1
execute if entity @a[team=gray,tag=playing] run scoreboard players add $number check_teams 1
execute if score $number check_teams matches ..1 unless entity @a[tag=playing,team=orange] run team join orange @r[tag=playing,team=!orange]
execute if entity @a[tag=playing,team=!blue,team=!orange,team=!green,team=!pink,team=!gray] if score $number team matches 2 run function game:battle/teams/balance_two_teams
execute if entity @a[tag=playing,team=!blue,team=!orange,team=!green,team=!pink,team=!gray] if score $number team matches 3 run function game:battle/teams/balance_three_teams
execute if entity @a[tag=playing,team=!blue,team=!orange,team=!green,team=!pink,team=!gray] if score $number team matches 4 run function game:battle/teams/balance_four_teams
execute if entity @a[tag=playing,team=!blue,team=!orange,team=!green,team=!pink,team=!gray] if score $number team matches 5 run function game:battle/teams/balance_five_teams
execute as @a[tag=!playing] at @s run function general:rank
clear @a written_book
team modify blue prefix {"text":""}
team modify orange prefix {"text":""}
team modify green prefix {"text":""}
team modify pink prefix {"text":""}
team modify gray prefix {"text":""}
tellraw @a[tag=playing,team=blue] [{"text":"You are on blue team!","color":"aqua"},{"text":"\nYour team: ","color":"aqua"},{"selector":"@a[tag=playing,team=blue]"}]
tellraw @a[tag=playing,team=orange] [{"text":"You are on orange team!","color":"#ff4e00"},{"text":"\nYour team: ","color":"#ff4e00"},{"selector":"@a[tag=playing,team=orange]"}]
tellraw @a[tag=playing,team=green] [{"text":"You are on green team!","color":"green"},{"text":"\nYour team: ","color":"green"},{"selector":"@a[tag=playing,team=green]"}]
tellraw @a[tag=playing,team=pink] [{"text":"You are on pink team!","color":"light_purple"},{"text":"\nYour team: ","color":"light_purple"},{"selector":"@a[tag=playing,team=pink]"}]
tellraw @a[tag=playing,team=gray] [{"text":"You are on gray team!","color":"dark_gray"},{"text":"\nYour team: ","color":"dark_gray"},{"selector":"@a[tag=playing,team=gray]"}]
team modify blue prefix [{"text":"(","color":"#476781","bold":true},{"text":"Blue","color":"aqua","bold":false},{"text":") ","color":"#476781","bold":true}]
team modify orange prefix [{"text":"(","color":"#9a3300","bold":true},{"text":"Orange","color":"#ff4e00","bold":false},{"text":") ","color":"#9a3300","bold":true}]
team modify green prefix [{"text":"(","color":"#09b500","bold":true},{"text":"Green","color":"green","bold":false},{"text":") ","color":"#09b500","bold":true}]
team modify pink prefix [{"text":"(","color":"#dd9ddc","bold":true},{"text":"Pink","color":"light_purple","bold":false},{"text":") ","color":"#dd9ddc","bold":true}]
team modify gray prefix [{"text":"(","color":"#8c8c8c","bold":true},{"text":"Gray","color":"dark_gray","bold":false},{"text":") ","color":"#8c8c8c","bold":true}]