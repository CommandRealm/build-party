advancement revoke @s everything
tag @s remove admin
recipe take @s *
scoreboard players set @s hat 0
scoreboard players set @s sponsor 0
scoreboard players set @s music 0
scoreboard players set $mod random 35
tag @s remove unlock_s_1
tag @s remove unlock_s_2
tag @s remove unlock_s_3
tag @s remove unlock_s_4
tag @s remove unlock_s_5
tag @s remove unlock_s_6
tag @s remove unlock_s_7
tag @s remove unlock_s_8

tag @s remove unlock_h_12
tag @s remove unlock_h_13
tag @s remove unlock_h_14
tag @s remove unlock_h_15
tag @s remove unlock_h_16
tag @s remove unlock_h_17

tag @s remove unlock_m_6
tag @s remove unlock_m_7
tag @s remove unlock_m_8

summon area_effect_cloud ~ ~1 ~ {Tags:["random"],Age:1}
execute store result score $rand random run data get entity @e[type=area_effect_cloud,tag=random,limit=1] UUID[0] 1
scoreboard players operation $rand random %= $mod random
kill @e[type=area_effect_cloud,tag=random]
execute if score $rand random matches 0..2 run scoreboard players set @s sponsor 0
execute if score $rand random matches 3..7 run scoreboard players set @s sponsor 1
execute if score $rand random matches 8..12 run scoreboard players set @s sponsor 2
execute if score $rand random matches 13..17 run scoreboard players set @s sponsor 3
execute if score $rand random matches 18..22 run scoreboard players set @s sponsor 4
execute if score $rand random matches 23..27 run scoreboard players set @s sponsor 5
execute if score $rand random matches 28..30 run scoreboard players set @s sponsor 6
execute if score $rand random matches 31..33 run scoreboard players set @s sponsor 7
execute if score $rand random matches 34 run scoreboard players set @s sponsor 8

tag @s[scores={sponsor=1}] add unlock_s_1
tag @s[scores={sponsor=2}] add unlock_s_2
tag @s[scores={sponsor=3}] add unlock_s_3
tag @s[scores={sponsor=4}] add unlock_s_4
tag @s[scores={sponsor=5}] add unlock_s_5
tag @s[scores={sponsor=6}] add unlock_s_6
tag @s[scores={sponsor=7}] add unlock_s_7
tag @s[scores={sponsor=8}] add unlock_s_8

scoreboard players set @s stats_wins 0
scoreboard players set @s stats_played 0
scoreboard players set @s stats_guessing 0
scoreboard players set @s stats_guessed 0
scoreboard players set @s stats_p_given 0
scoreboard players set @s stats_p_taken 0