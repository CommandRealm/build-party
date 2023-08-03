tag @a remove got_placement
scoreboard players set @a[tag=!playing] fake_points -10000000
scoreboard objectives remove fake_points
scoreboard objectives add fake_points dummy
scoreboard players set $check_place fake_points 0
execute as @a[tag=playing] at @s run scoreboard players operation @s fake_points = @s points
execute as @a[tag=playing] at @s run scoreboard players operation $check_place fake_points > @s points
execute as @a[tag=playing] at @s run scoreboard players operation @s fake_points -= $check_place fake_points
tellraw @a[tag=playing] {"text":"\n\n"}
tellraw @a [{"text":"===================Build ","color":"yellow"},{"text":"Party===================","color":"gold"}]
execute as @a[scores={fake_points=0},tag=playing,tag=!got_placement,limit=1,team=blue] run tellraw @a [{"text":"\nVictor: ","color":"yellow"},{"text":"Blue team","color":"aqua"},{"text":" score: ","color":"yellow"},{"score":{"objective":"points","name":"@s"},"color":"yellow"}]
execute as @a[scores={fake_points=0},tag=playing,tag=!got_placement,limit=1,team=orange] run tellraw @a [{"text":"\nVictor: ","color":"yellow"},{"text":"Orange team","color":"#ff4e00"},{"text":" score: ","color":"yellow"},{"score":{"objective":"points","name":"@s"},"color":"yellow"}]
execute as @a[scores={fake_points=0},tag=playing,tag=!got_placement,limit=1,team=green] run tellraw @a [{"text":"\nVictor: ","color":"yellow"},{"text":"Green team","color":"green"},{"text":" score: ","color":"yellow"},{"score":{"objective":"points","name":"@s"},"color":"yellow"}]
execute as @a[scores={fake_points=0},tag=playing,tag=!got_placement,limit=1,team=pink] run tellraw @a [{"text":"\nVictor: ","color":"yellow"},{"text":"Pink team","color":"light_purple"},{"text":" score: ","color":"yellow"},{"score":{"objective":"points","name":"@s"},"color":"yellow"}]
execute as @a[scores={fake_points=0},tag=playing,tag=!got_placement,limit=1,team=gray] run tellraw @a [{"text":"\nVictor: ","color":"yellow"},{"text":"Gray team","color":"gray"},{"text":" score: ","color":"yellow"},{"score":{"objective":"points","name":"@s"},"color":"yellow"}]
tag @r[scores={fake_points=0},tag=playing,tag=!got_placement] add lobby_display
execute as @r[scores={fake_points=0},tag=playing,tag=!got_placement,tag=lobby_display] at @s run function game:clone_build_to_lobby
execute as @r[scores={fake_points=0},tag=playing,tag=!got_placement,tag=lobby_display] at @s run function game:battle/teams/color_to_lobby
execute as @a[scores={fake_points=0},team=blue] run advancement grant @a[tag=playing,team=blue] only minecraft:custom/win_teams
execute as @a[scores={fake_points=0},team=orange] run advancement grant @a[tag=playing,team=orange] only minecraft:custom/win_teams
execute as @a[scores={fake_points=0},team=green] run advancement grant @a[tag=playing,team=green] only minecraft:custom/win_teams
execute as @a[scores={fake_points=0},team=pink] run advancement grant @a[tag=playing,team=pink] only minecraft:custom/win_teams
execute as @a[scores={fake_points=0},team=gray] run advancement grant @a[tag=playing,team=gray] only minecraft:custom/win_teams
tag @a remove lobby_display
tag @a[scores={fake_points=0},tag=playing,tag=!got_placement] add got_placement
function game:battle/teams/help_determine_winner
function game:battle/teams/award_winners
scoreboard players set $check_place fake_points -1000
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation @s fake_points = @s points
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation $check_place fake_points > @s points
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation @s fake_points -= $check_place fake_points
execute as @a[scores={fake_points=0},tag=playing,tag=!got_placement,limit=1,team=blue] run tellraw @a [{"text":"Blue team","color":"aqua"},{"text":" score: ","color":"yellow"},{"score":{"objective":"points","name":"@s"},"color":"yellow"}]
execute as @a[scores={fake_points=0},tag=playing,tag=!got_placement,limit=1,team=orange] run tellraw @a [{"text":"Orange team","color":"#ff4e00"},{"text":" score: ","color":"yellow"},{"score":{"objective":"points","name":"@s"},"color":"yellow"}]
execute as @a[scores={fake_points=0},tag=playing,tag=!got_placement,limit=1,team=green] run tellraw @a [{"text":"Green team","color":"green"},{"text":" score: ","color":"yellow"},{"score":{"objective":"points","name":"@s"},"color":"yellow"}]
execute as @a[scores={fake_points=0},tag=playing,tag=!got_placement,limit=1,team=pink] run tellraw @a [{"text":"Pink team","color":"light_purple"},{"text":" score: ","color":"yellow"},{"score":{"objective":"points","name":"@s"},"color":"yellow"}]
execute as @a[scores={fake_points=0},tag=playing,tag=!got_placement,limit=1,team=gray] run tellraw @a [{"text":"Gray team","color":"gray"},{"text":" score: ","color":"yellow"},{"score":{"objective":"points","name":"@s"},"color":"yellow"}]
tag @a[scores={fake_points=0},tag=playing,tag=!got_placement] add got_placement
function game:battle/teams/help_determine_winner
scoreboard players set $check_place fake_points -1000
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation @s fake_points = @s points
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation $check_place fake_points > @s points
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation @s fake_points -= $check_place fake_points
execute as @a[scores={fake_points=0},tag=playing,tag=!got_placement,limit=1,team=blue] run tellraw @a [{"text":"Blue team","color":"aqua"},{"text":" score: ","color":"yellow"},{"score":{"objective":"points","name":"@s"},"color":"yellow"}]
execute as @a[scores={fake_points=0},tag=playing,tag=!got_placement,limit=1,team=orange] run tellraw @a [{"text":"Orange team","color":"#ff4e00"},{"text":" score: ","color":"yellow"},{"score":{"objective":"points","name":"@s"},"color":"yellow"}]
execute as @a[scores={fake_points=0},tag=playing,tag=!got_placement,limit=1,team=green] run tellraw @a [{"text":"Green team","color":"green"},{"text":" score: ","color":"yellow"},{"score":{"objective":"points","name":"@s"},"color":"yellow"}]
execute as @a[scores={fake_points=0},tag=playing,tag=!got_placement,limit=1,team=pink] run tellraw @a [{"text":"Pink team","color":"light_purple"},{"text":" score: ","color":"yellow"},{"score":{"objective":"points","name":"@s"},"color":"yellow"}]
execute as @a[scores={fake_points=0},tag=playing,tag=!got_placement,limit=1,team=gray] run tellraw @a [{"text":"Gray team","color":"gray"},{"text":" score: ","color":"yellow"},{"score":{"objective":"points","name":"@s"},"color":"yellow"}]
tag @a[scores={fake_points=0},tag=playing,tag=!got_placement] add got_placement
function game:battle/teams/help_determine_winner
scoreboard players set $check_place fake_points -1000
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation @s fake_points = @s points
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation $check_place fake_points > @s points
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation @s fake_points -= $check_place fake_points
execute as @a[scores={fake_points=0},tag=playing,tag=!got_placement,limit=1,team=blue] run tellraw @a [{"text":"Blue team","color":"aqua"},{"text":" score: ","color":"yellow"},{"score":{"objective":"points","name":"@s"},"color":"yellow"}]
execute as @a[scores={fake_points=0},tag=playing,tag=!got_placement,limit=1,team=orange] run tellraw @a [{"text":"Orange team","color":"#ff4e00"},{"text":" score: ","color":"yellow"},{"score":{"objective":"points","name":"@s"},"color":"yellow"}]
execute as @a[scores={fake_points=0},tag=playing,tag=!got_placement,limit=1,team=green] run tellraw @a [{"text":"Green team","color":"green"},{"text":" score: ","color":"yellow"},{"score":{"objective":"points","name":"@s"},"color":"yellow"}]
execute as @a[scores={fake_points=0},tag=playing,tag=!got_placement,limit=1,team=pink] run tellraw @a [{"text":"Pink team","color":"light_purple"},{"text":" score: ","color":"yellow"},{"score":{"objective":"points","name":"@s"},"color":"yellow"}]
execute as @a[scores={fake_points=0},tag=playing,tag=!got_placement,limit=1,team=gray] run tellraw @a [{"text":"Gray team","color":"gray"},{"text":" score: ","color":"yellow"},{"score":{"objective":"points","name":"@s"},"color":"yellow"}]
tag @a[scores={fake_points=0},tag=playing,tag=!got_placement] add got_placement
function game:battle/teams/help_determine_winner
scoreboard players set $check_place fake_points -1000
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation @s fake_points = @s points
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation $check_place fake_points > @s points
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation @s fake_points -= $check_place fake_points
execute as @a[scores={fake_points=0},tag=playing,tag=!got_placement,limit=1,team=blue] run tellraw @a [{"text":"Blue team","color":"aqua"},{"text":" score: ","color":"yellow"},{"score":{"objective":"points","name":"@s"},"color":"yellow"}]
execute as @a[scores={fake_points=0},tag=playing,tag=!got_placement,limit=1,team=orange] run tellraw @a [{"text":"Orange team","color":"#ff4e00"},{"text":" score: ","color":"yellow"},{"score":{"objective":"points","name":"@s"},"color":"yellow"}]
execute as @a[scores={fake_points=0},tag=playing,tag=!got_placement,limit=1,team=green] run tellraw @a [{"text":"Green team","color":"green"},{"text":" score: ","color":"yellow"},{"score":{"objective":"points","name":"@s"},"color":"yellow"}]
execute as @a[scores={fake_points=0},tag=playing,tag=!got_placement,limit=1,team=pink] run tellraw @a [{"text":"Pink team","color":"light_purple"},{"text":" score: ","color":"yellow"},{"score":{"objective":"points","name":"@s"},"color":"yellow"}]
execute as @a[scores={fake_points=0},tag=playing,tag=!got_placement,limit=1,team=gray] run tellraw @a [{"text":"Gray team","color":"gray"},{"text":" score: ","color":"yellow"},{"score":{"objective":"points","name":"@s"},"color":"yellow"}]
tag @a[scores={fake_points=0},tag=playing,tag=!got_placement] add got_placement
function game:battle/teams/help_determine_winner
function end:full