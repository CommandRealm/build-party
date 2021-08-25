scoreboard players add @a[tag=playing] final_rate 0
scoreboard players set @a[tag=playing,scores={final_rate=0}] final_rate 5
execute as @a[tag=!show_build,tag=playing] at @s run scoreboard players operation @a[tag=show_build] points += @s final_rate
execute as @a[tag=!show_build,tag=playing] at @s run scoreboard players operation @a[tag=show_build] stats_p_taken += @s final_rate
execute as @a[tag=!show_build,tag=playing] at @s run scoreboard players operation @s stats_p_given += @s final_rate
tag @a[tag=show_build] add shown_build
execute if score $number team matches 2.. run function game:battle/teams/rate_over
tag @a remove show_build
execute if entity @a[tag=!shown_build,tag=playing] run function game:battle/view_build
execute unless entity @a[tag=!shown_build,tag=playing] if score $number team matches 1 run function game:battle/determine_winner
execute unless entity @a[tag=!shown_build,tag=playing] if score $number team matches 2.. run function game:battle/teams/determine_winner