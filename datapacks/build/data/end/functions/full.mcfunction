playsound minecraft:block.anvil.destroy master @s ~ ~ ~ 1 0
tag @a[tag=playing] add unlock_something
function end:players
scoreboard players add @a[tag=just_won] stats_wins 1
execute as @a[tag=unlock_something] at @s run function sponsors:chance_for_sponsor
execute as @a[tag=unlock_something] at @s run function cosmetic:chance_for_cosmetic
advancement grant @a[scores={stats_wins=5..}] only minecraft:custom/win_five_games
advancement grant @a[scores={stats_wins=10..}] only minecraft:custom/win_ten_games
tag @a remove unlock_something
scoreboard players set @a check_sponsors 1
scoreboard players add @a[tag=unlock_s_1] check_sponsors 1
scoreboard players add @a[tag=unlock_s_2] check_sponsors 1
scoreboard players add @a[tag=unlock_s_3] check_sponsors 1
scoreboard players add @a[tag=unlock_s_4] check_sponsors 1
scoreboard players add @a[tag=unlock_s_5] check_sponsors 1
scoreboard players add @a[tag=unlock_s_6] check_sponsors 1
scoreboard players add @a[tag=unlock_s_7] check_sponsors 1
scoreboard players add @a[tag=unlock_s_8] check_sponsors 1
scoreboard players add @a[tag=unlock_s_9] check_sponsors 1
scoreboard players add @a[tag=unlock_s_10] check_sponsors 1
scoreboard players add @a[tag=unlock_s_11] check_sponsors 1
advancement grant @a[scores={check_sponsors=3..}] only minecraft:custom/three_s_offers
advancement grant @a[scores={check_sponsors=5..}] only minecraft:custom/five_s_offers
advancement grant @a[scores={check_sponsors=12..}] only minecraft:custom/all_s_offers

advancement grant @a[advancements={custom/visit_sponsor=true,custom/three_s_offers=true,custom/five_s_offers=true,custom/all_s_offers=true}] only minecraft:custom/unlock_sound

advancement grant @a[advancements={custom/play_game=true,custom/win_guess=true,custom/win_versus=true,custom/win_teams=true,custom/win_five_games=true,custom/win_ten_games=true}] only minecraft:custom/unlock_hat

tag @a remove builder