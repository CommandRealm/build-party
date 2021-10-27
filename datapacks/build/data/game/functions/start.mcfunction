scoreboard players set $time startup_timer -1
tag @a[scores={ready=1}] add playing
scoreboard players set @a[tag=playing] team_swap 100
execute if score $number team matches 1 as @a[tag=playing] at @s run function general:rank
scoreboard players set @a[tag=playing] adv_jukebox 0
scoreboard players set @a[tag=playing] adv_wolf 0
scoreboard players set @a[scores={ready=1}] ready 0
scoreboard players set $game state 1
clear @a[tag=playing]
execute if score $number mode matches 0 run function game:guess/game_start
execute if score $number mode matches 1 run function game:battle/game_start
scoreboard objectives remove player_id
scoreboard objectives add player_id dummy
tag @a remove get_player_id
function game:player_id
tag @a remove get_player_id
scoreboard players reset @a fly
clear @a[tag=!playing] knowledge_book
clear @a[tag=!playing] written_book
bossbar set minecraft:lobby players @a[tag=!playing]
tag @a[tag=playing] remove reset_movement
tag @a[tag=playing] remove replace_hat
scoreboard players add @a[tag=playing] stats_played 1
advancement grant @a[tag=playing] only minecraft:custom/play_game

advancement revoke @a only game:inventory_changed



setblock 0 69 12 air


data modify entity @e[type=area_effect_cloud,tag=start_button_text,limit=1] CustomNameVisible set value 0b