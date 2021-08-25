effect clear @a[team=building]
scoreboard players set $time cooldown 0
gamemode creative @a[tag=builder]
gamemode spectator @a[tag=!builder,tag=playing]
clear @a[tag=playing]
execute as @a[tag=playing,tag=builder] at @s run function game:tp_to_sponsor
execute as @a[tag=playing,tag=builder] at @s run tp @s ~ ~ ~11 180 10
execute as @a[tag=playing,tag=builder] at @s run tp @a[team=guessing,tag=playing] ~ 73.5 ~6 facing entity @s
execute as @a[tag=playing,tag=builder] at @s run tp @a[team=spectator] @s
function game:get_theme
scoreboard players set @a book_delay 0
execute as @a[team=guessing] at @s run function game:guess/fill_books
effect clear @a[tag=playing]
schedule function game:player_mark_sponsor 3t
team modify building prefix {"text":""}
tellraw @a [{"text":" | ","color":"gold","bold":true},{"selector":"@a[tag=builder]","color":"yellow","bold":false},{"text":" will be building.","color":"yellow","bold":false}]
team modify building prefix [{"text":"(","color":"blue","bold":true},{"text":"✮","bold":false},{"text":") ","bold":true}]
scoreboard players enable @a switch_mode
gamemode adventure @a[tag=!builder,tag=playing]
execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.guitar master @s ~ ~ ~ 100 0.75
execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 100 0.75
effect give @a[team=guessing] levitation 10000 255 true
effect give @a[team=guessing] mining_fatigue 100000 255 true
effect give @a[team=guessing] invisibility 100000 255 true
effect give @a[team=guessing] weakness 100000 255 true
scoreboard players operation $time game_timer = $time set_timer
bossbar set timer visible true
scoreboard players set @a drop_book 0
stopsound @a[tag=playing]
tag @a remove unlocked_advancement
loot replace entity @a[tag=builder] hotbar.8 loot minecraft:options_book
execute at @e[tag=sponsor_marker,type=area_effect_cloud] run fill ~-2 ~-1 ~-2 ~26 110 ~-1 barrier
execute at @e[tag=sponsor_marker,type=area_effect_cloud] run fill ~-2 ~-1 ~-2 ~-1 110 ~26 barrier
execute at @e[tag=sponsor_marker,type=area_effect_cloud] run fill ~26 ~-1 ~-2 ~26 110 ~26 barrier
execute at @e[tag=sponsor_marker,type=area_effect_cloud] run fill ~-2 ~-1 ~26 ~26 110 ~26 barrier
execute as @a[tag=playing,tag=builder,scores={music=1}] at @s run playsound minecraft:music_disc.blocks record @a[tag=playing] ~ ~ ~ 100000 1
execute as @a[tag=playing,tag=builder,scores={music=2}] at @s run playsound minecraft:music_disc.stal record @a[tag=playing] ~ ~ ~ 100000 1
execute as @a[tag=playing,tag=builder,scores={music=3}] at @s run playsound minecraft:music_disc.strad record @a[tag=playing] ~ ~ ~ 100000 1
execute as @a[tag=playing,tag=builder,scores={music=4}] at @s run playsound minecraft:music_disc.far record @a[tag=playing] ~ ~ ~ 100000 1
execute as @a[tag=playing,tag=builder,scores={music=5}] at @s run playsound minecraft:music_disc.cat record @a[tag=playing] ~ ~ ~ 100000 1.5
execute as @a[tag=playing,tag=builder,scores={music=6}] at @s run playsound minecraft:music_disc.chirp record @a[tag=playing] ~ ~ ~ 100000 1.11
execute as @a[tag=playing,tag=builder,scores={music=7}] at @s run playsound minecraft:music_disc.mellohi record @a[tag=playing] ~ ~ ~ 100000 0
execute as @a[tag=playing,tag=builder,scores={music=8}] at @s run playsound minecraft:music_disc.pigstep record @a[tag=playing] ~ ~ ~ 100000 1
execute as @a[tag=playing,tag=builder,scores={music=9}] at @s run playsound minecraft:music_disc.pigstep record @a[tag=playing] ~ ~ ~ 100000 1.15
advancement grant @a[tag=playing,tag=builder] only minecraft:custom/visit_sponsor