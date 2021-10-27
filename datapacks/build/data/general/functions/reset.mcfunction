advancement revoke @s everything
tag @s remove admin
recipe take @s *
scoreboard players set @s hat 0
scoreboard players set @s sponsor 0
scoreboard players set @s music 0
scoreboard players set @s guess_sounds 0

tag @s remove unlock_s_1
tag @s remove unlock_s_2
tag @s remove unlock_s_3
tag @s remove unlock_s_4
tag @s remove unlock_s_5
tag @s remove unlock_s_6
tag @s remove unlock_s_7
tag @s remove unlock_s_8
tag @s remove unlock_s_9
tag @s remove unlock_s_10
tag @s remove unlock_s_11

tag @s remove unlock_h_12
tag @s remove unlock_h_13
tag @s remove unlock_h_14
tag @s remove unlock_h_15
tag @s remove unlock_h_16
tag @s remove unlock_h_17

tag @s remove unlock_m_6
tag @s remove unlock_m_7
tag @s remove unlock_m_8

tag @s remove unlock_so_6
tag @s remove unlock_so_7
tag @s remove unlock_so_8

function general:update_roles

scoreboard players set @s prefix -1
execute if entity @s[tag=has_cr] run scoreboard players set @s prefix 99
execute if entity @s[tag=has_test] run scoreboard players set @s prefix 0
execute if entity @s[tag=has_help] run scoreboard players set @s prefix 1
execute if entity @s[tag=has_bld] run scoreboard players set @s prefix 2
execute if entity @s[tag=has_prg] run scoreboard players set @s prefix 4
execute if entity @s[tag=has_art] run scoreboard players set @s prefix 8
execute if entity @s[tag=has_srbld] run scoreboard players set @s prefix 3
execute if entity @s[tag=has_srprg] run scoreboard players set @s prefix 5

execute if entity @s[tag=has_manager] run scoreboard players set @s prefix 6
execute if entity @s[tag=has_lead] run scoreboard players set @s prefix 7

scoreboard players set $mod random 35

summon area_effect_cloud ~ ~1 ~ {Tags:["random"],Age:1}
execute store result score $rand random run data get entity @e[type=area_effect_cloud,tag=random,limit=1] UUID[0] 1
scoreboard players operation $rand random %= $mod random
kill @e[type=area_effect_cloud,tag=random]

# 75% common, 20% epic, 5% legendary
execute if score $rand random matches 0..2 run scoreboard players set @s sponsor 0
execute if score $rand random matches 3..5 run scoreboard players set @s sponsor 1
execute if score $rand random matches 6..8 run scoreboard players set @s sponsor 2
execute if score $rand random matches 9..11 run scoreboard players set @s sponsor 3
execute if score $rand random matches 12..14 run scoreboard players set @s sponsor 4
execute if score $rand random matches 15..17 run scoreboard players set @s sponsor 5
execute if score $rand random matches 18..21 run scoreboard players set @s sponsor 9
execute if score $rand random matches 22..24 run scoreboard players set @s sponsor 10
execute if score $rand random matches 25..27 run scoreboard players set @s sponsor 11


# epic
execute if score $rand random matches 28..30 run scoreboard players set @s sponsor 6
execute if score $rand random matches 31..33 run scoreboard players set @s sponsor 7


# legendary
execute if score $rand random matches 34 run scoreboard players set @s sponsor 8

tag @s[scores={sponsor=1}] add unlock_s_1
tag @s[scores={sponsor=2}] add unlock_s_2
tag @s[scores={sponsor=3}] add unlock_s_3
tag @s[scores={sponsor=4}] add unlock_s_4
tag @s[scores={sponsor=5}] add unlock_s_5
tag @s[scores={sponsor=6}] add unlock_s_6
tag @s[scores={sponsor=7}] add unlock_s_7
tag @s[scores={sponsor=8}] add unlock_s_8
tag @s[scores={sponsor=9}] add unlock_s_9
tag @s[scores={sponsor=10}] add unlock_s_10
tag @s[scores={sponsor=11}] add unlock_s_11

scoreboard players set @s stats_wins 0
scoreboard players set @s stats_played 0
scoreboard players set @s stats_guessing 0
scoreboard players set @s stats_guessed 0
scoreboard players set @s stats_p_given 0
scoreboard players set @s stats_p_taken 0