tag @r[tag=!get_player_id,tag=playing] add get_player_id
scoreboard players add @a[tag=get_player_id] player_id 1
execute if entity @a[tag=playing,tag=!get_player_id] run function game:player_id