tag @a remove got_placement
scoreboard objectives remove fake_points
scoreboard objectives add fake_points dummy
scoreboard players set $check_place fake_points 0
execute as @a[tag=playing] at @s run scoreboard players operation @s fake_points = @s points
execute as @a[tag=playing] at @s run scoreboard players operation $check_place fake_points > @s points
execute as @a[tag=playing] at @s run scoreboard players operation @s fake_points -= $check_place fake_points
tellraw @a[tag=playing] {"text":"\n\n"}
tellraw @a [{"text":"======================Build ","color":"yellow"},{"text":"Party======================","color":"gold"}]
execute as @a[scores={fake_points=0},tag=playing] run tellraw @a [{"text":"\nVictor: ","color":"yellow"},{"selector":"@s","color":"orange"},{"text":" score: "},{"score":{"objective":"points","name":"@s"}}]
execute as @r[scores={fake_points=0},tag=playing,tag=!got_placement] at @s run function game:clone_build_to_lobby
advancement grant @a[scores={fake_points=0},tag=playing,tag=!got_placement] only minecraft:custom/win_versus
tag @a[scores={fake_points=0},tag=playing,tag=!got_placement] add just_won

tag @a[scores={fake_points=0},tag=playing] add got_placement
scoreboard players set $check_place fake_points -1000
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation @s fake_points = @s points
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation $check_place fake_points > @s points
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation @s fake_points -= $check_place fake_points
execute as @a[scores={fake_points=0},tag=playing,tag=!got_placement] run tellraw @a [{"selector":"@s","color":"orange"},{"text":" score: "},{"score":{"objective":"points","name":"@s"}}]
tag @a[scores={fake_points=0},tag=playing] add got_placement
scoreboard players set $check_place fake_points -1000
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation @s fake_points = @s points
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation $check_place fake_points > @s points
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation @s fake_points -= $check_place fake_points
execute as @a[scores={fake_points=0},tag=playing,tag=!got_placement] run tellraw @a [{"selector":"@s","color":"orange"},{"text":" score: "},{"score":{"objective":"points","name":"@s"}}]
tag @a[scores={fake_points=0},tag=playing] add got_placement
scoreboard players set $check_place fake_points -1000
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation @s fake_points = @s points
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation $check_place fake_points > @s points
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation @s fake_points -= $check_place fake_points
execute as @a[scores={fake_points=0},tag=playing,tag=!got_placement] run tellraw @a [{"selector":"@s","color":"orange"},{"text":" score: "},{"score":{"objective":"points","name":"@s"}}]
tag @a[scores={fake_points=0},tag=playing] add got_placement
scoreboard players set $check_place fake_points -1000
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation @s fake_points = @s points
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation $check_place fake_points > @s points
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation @s fake_points -= $check_place fake_points
execute as @a[scores={fake_points=0},tag=playing,tag=!got_placement] run tellraw @a [{"selector":"@s","color":"orange"},{"text":" score: "},{"score":{"objective":"points","name":"@s"}}]
tag @a[scores={fake_points=0},tag=playing] add got_placement
scoreboard players set $check_place fake_points -1000
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation @s fake_points = @s points
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation $check_place fake_points > @s points
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation @s fake_points -= $check_place fake_points
execute as @a[scores={fake_points=0},tag=playing,tag=!got_placement] run tellraw @a [{"selector":"@s","color":"orange"},{"text":" score: "},{"score":{"objective":"points","name":"@s"}}]
tag @a[scores={fake_points=0},tag=playing] add got_placement
scoreboard players set $check_place fake_points -1000
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation @s fake_points = @s points
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation $check_place fake_points > @s points
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation @s fake_points -= $check_place fake_points
execute as @a[scores={fake_points=0},tag=playing,tag=!got_placement] run tellraw @a [{"selector":"@s","color":"orange"},{"text":" score: "},{"score":{"objective":"points","name":"@s"}}]
tag @a[scores={fake_points=0},tag=playing] add got_placement
scoreboard players set $check_place fake_points -1000
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation @s fake_points = @s points
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation $check_place fake_points > @s points
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation @s fake_points -= $check_place fake_points
execute as @a[scores={fake_points=0},tag=playing,tag=!got_placement] run tellraw @a [{"selector":"@s","color":"orange"},{"text":" score: "},{"score":{"objective":"points","name":"@s"}}]
tag @a[scores={fake_points=0},tag=playing] add got_placement
scoreboard players set $check_place fake_points -1000
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation @s fake_points = @s points
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation $check_place fake_points > @s points
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation @s fake_points -= $check_place fake_points
execute as @a[scores={fake_points=0},tag=playing,tag=!got_placement] run tellraw @a [{"selector":"@s","color":"orange"},{"text":" score: "},{"score":{"objective":"points","name":"@s"}}]
tag @a[scores={fake_points=0},tag=playing] add got_placement
scoreboard players set $check_place fake_points -1000
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation @s fake_points = @s points
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation $check_place fake_points > @s points
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation @s fake_points -= $check_place fake_points
execute as @a[scores={fake_points=0},tag=playing,tag=!got_placement] run tellraw @a [{"selector":"@s","color":"orange"},{"text":" score: "},{"score":{"objective":"points","name":"@s"}}]
tag @a[scores={fake_points=0},tag=playing] add got_placement
scoreboard players set $check_place fake_points -1000
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation @s fake_points = @s points
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation $check_place fake_points > @s points
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation @s fake_points -= $check_place fake_points
execute as @a[scores={fake_points=0},tag=playing,tag=!got_placement] run tellraw @a [{"selector":"@s","color":"orange"},{"text":" score: "},{"score":{"objective":"points","name":"@s"}}]
tag @a[scores={fake_points=0},tag=playing] add got_placement
scoreboard players set $check_place fake_points -1000
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation @s fake_points = @s points
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation $check_place fake_points > @s points
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation @s fake_points -= $check_place fake_points
execute as @a[scores={fake_points=0},tag=playing,tag=!got_placement] run tellraw @a [{"selector":"@s","color":"orange"},{"text":" score: "},{"score":{"objective":"points","name":"@s"}}]
tag @a remove got_placement
function end:full