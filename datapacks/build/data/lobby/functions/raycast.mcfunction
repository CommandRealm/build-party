scoreboard players remove @s r_limit 1
execute if entity @e[tag=show_details,distance=..0.75] run function lobby:show_title
execute positioned ~ ~-1.5 ~ if entity @e[tag=show_details,type=armor_stand,distance=..0.75] run function lobby:show_title
execute if entity @s[scores={r_limit=1..}] positioned ^ ^ ^1 unless block ~ ~ ~ white_concrete unless block ~ ~ ~ light_gray_concrete unless block ~ ~ ~ black_concrete run function lobby:raycast