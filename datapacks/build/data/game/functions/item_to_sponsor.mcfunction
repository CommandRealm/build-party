execute if entity @a[tag=show_build,scores={player_id=1}] run tp @s ~72 ~ ~
execute if entity @a[tag=show_build,scores={player_id=3}] run tp @s ~-72 ~ ~
execute if entity @a[tag=show_build,scores={player_id=4}] run tp @s ~-144 ~ ~
execute if entity @a[tag=show_build,scores={player_id=5}] run tp @s ~72 ~ ~-72
execute if entity @a[tag=show_build,scores={player_id=6}] run tp @s ~ ~ ~-72
execute if entity @a[tag=show_build,scores={player_id=7}] run tp @s ~-72 ~ ~-72
execute if entity @a[tag=show_build,scores={player_id=8}] run tp @s ~-144 ~ ~-72
execute if entity @a[tag=show_build,scores={player_id=9}] run tp @s ~72 ~ ~-144
execute if entity @a[tag=show_build,scores={player_id=10}] run tp @s ~ ~ ~-144
execute if entity @a[tag=show_build,scores={player_id=11}] run tp @s ~-72 ~ ~-144
data merge entity @s {NoGravity:1b}
##coords to sponsor + 1k (for below commands)
execute if entity @a[tag=show_build,tag=playing,scores={sponsor=0}] at @s run tp @s ~11000 ~ ~
execute if entity @a[tag=show_build,tag=playing,scores={sponsor=1}] at @s run tp @s ~7000 ~ ~
execute if entity @a[tag=show_build,tag=playing,scores={sponsor=7}] at @s run tp @s ~3000 ~ ~
execute if entity @a[tag=show_build,tag=playing,scores={sponsor=2}] at @s run tp @s ~15000 ~ ~
execute if entity @a[tag=show_build,tag=playing,scores={sponsor=5}] at @s run tp @s ~4000 ~ ~
execute if entity @a[tag=show_build,tag=playing,scores={sponsor=3}] at @s run tp @s ~9000 ~ ~
execute if entity @a[tag=show_build,tag=playing,scores={sponsor=4}] at @s run tp @s ~8000 ~ ~
execute if entity @a[tag=show_build,tag=playing,scores={sponsor=8}] at @s run tp @s ~16000 ~ ~
execute if entity @a[tag=show_build,tag=playing,scores={sponsor=6}] at @s run tp @s ~17000 ~ ~