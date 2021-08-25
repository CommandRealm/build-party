scoreboard players set @a[tag=!playing] fake_points -10000000
execute as @a[scores={fake_points=0},tag=got_placement,tag=playing,team=blue] at @s run tag @a[team=blue,tag=playing] add got_placement
execute as @a[scores={fake_points=0},tag=got_placement,tag=playing,team=orange] at @s run tag @a[team=orange,tag=playing] add got_placement
execute as @a[scores={fake_points=0},tag=got_placement,tag=playing,team=green] at @s run tag @a[team=green,tag=playing] add got_placement
execute as @a[scores={fake_points=0},tag=got_placement,tag=playing,team=pink] at @s run tag @a[team=pink,tag=playing] add got_placement
execute as @a[scores={fake_points=0},tag=got_placement,tag=playing,team=gray] at @s run tag @a[team=gray,tag=playing] add got_placement