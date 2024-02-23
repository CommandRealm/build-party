playsound minecraft:block.anvil.destroy master @s ~ ~ ~ 1 0
tag @a[tag=playing] add unlock_something
function end:players
scoreboard players add @a[tag=just_won] stats_wins 1
execute as @a[tag=unlock_something] at @s run function sponsors:chance_for_sponsor
execute as @a[tag=unlock_something] at @s run function cosmetic:chance_for_cosmetic
advancement grant @a[scores={stats_wins=5..}] only game:custom/win_five_games
advancement grant @a[scores={stats_wins=10..}] only game:custom/win_ten_games
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
advancement grant @a[scores={check_sponsors=3..}] only game:custom/three_s_offers
advancement grant @a[scores={check_sponsors=5..}] only game:custom/five_s_offers
advancement grant @a[scores={check_sponsors=12..}] only game:custom/all_s_offers

advancement grant @a[advancements={game:custom/visit_sponsor=true,game:custom/three_s_offers=true,game:custom/five_s_offers=true,game:custom/all_s_offers=true}] only game:custom/unlock_sound

advancement grant @a[advancements={game:custom/play_game=true,game:custom/win_guess=true,game:custom/win_versus=true,game:custom/win_teams=true,game:custom/win_five_games=true,game:custom/win_ten_games=true}] only game:custom/unlock_hat

tag @a remove builder