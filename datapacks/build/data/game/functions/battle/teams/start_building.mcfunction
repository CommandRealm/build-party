scoreboard players set @a[team=blue,tag=playing] player_id 1
scoreboard players set @a[team=orange,tag=playing] player_id 3
scoreboard players set @a[team=green,tag=playing] player_id 6
scoreboard players set @a[team=pink,tag=playing] player_id 9
scoreboard players set @a[team=gray,tag=playing] player_id 11
function game:battle/teams/fill_team_area
schedule function game:battle/teams/fill_team_area 10t