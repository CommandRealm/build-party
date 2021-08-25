execute if score $number team matches 2.. run playsound minecraft:ui.button.click master @s ~ ~ ~ 100000 1
execute if score $number team matches 2.. if entity @s[scores={select_team=1}] run function lobby:teams/select_blue
execute if score $number team matches 2.. if entity @s[scores={select_team=2}] run function lobby:teams/select_orange
execute if score $number team matches 3.. if entity @s[scores={select_team=3}] run function lobby:teams/select_green
execute if score $number team matches 4.. if entity @s[scores={select_team=4}] run function lobby:teams/select_pink
execute if score $number team matches 5.. if entity @s[scores={select_team=5}] run function lobby:teams/select_gray
execute if score $number team matches 2.. if entity @s[scores={select_team=10}] run function lobby:teams/leave_team
scoreboard players enable @s select_team
scoreboard players set @s select_team 0