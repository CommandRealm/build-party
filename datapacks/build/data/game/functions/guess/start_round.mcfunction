effect clear @a[team=building]
execute if score $number nine_block matches 1 as @r[tag=playing] run function game:random_blocks/generate

scoreboard players set $time cooldown 0
gamemode creative @a[tag=builder]
gamemode spectator @a[tag=!builder,tag=playing]
clear @a[tag=playing]
execute as @a[tag=playing,tag=builder] at @s run function game:tp_to_sponsor
execute as @a[tag=playing,tag=builder] at @s run tp @s ~ ~ ~-11 0 10
execute if score $number mode matches 0 as @a[tag=playing,tag=builder] at @s run tp @a[team=guessing,tag=playing] ~ 73.5 ~-8.0 facing entity @s
execute as @a[tag=playing,tag=builder] at @s run tp @a[team=spectator] @s
function game:get_theme

##Converting it to underscores
function game:guess/underscores/convert

scoreboard players set @a book_delay 0
execute as @a[team=guessing] at @s run function game:guess/fill_books
effect clear @a[tag=playing]
forceload remove all
schedule function game:player_mark_sponsor 3t
schedule function game:player_forceload_sponsor 5t
schedule function game:player_clear_sponsor 35t

execute as @a[tag=playing] at @s run scoreboard players operation @s limited_guesses = $number limited_guesses
execute if score $number limited_guesses matches 1.. as @a[tag=playing,tag=!builder] at @s run tellraw @s [{"text":"- ","color":"gray"},{"text":"You have ","color":"gold"},{"score":{"objective":"limited_guesses","name":"@s"},"color":"yellow","bold":true},{"text":" guesses remaining","color":"gold"}]

scoreboard objectives remove new_theme
scoreboard objectives add new_theme trigger
scoreboard players enable @a[tag=builder] new_theme

scoreboard players add $rounds_played number 1

team modify building prefix {"text":""}
tellraw @a ["",{"text":" | ","color":"gold","bold":true},{"selector":"@a[tag=builder]","color":"yellow","bold":false},{"text":" will be building.","color":"yellow","bold":false},{"text":" "},{"text": "(","color":"gray"},{"score":{"objective":"number","name":"$rounds_played"},"color":"white"},{"text":"/","color":"gray"},{"score":{"objective":"number","name":"$rounds_to_play"},"color":"white"},{"text":")","color":"gray"}]
tellraw @a[tag=playing,tag=builder] [{"text":"Your theme is: ","color":"gold","bold":false},{"nbt":"Theme","storage":"minecraft:theme","interpret":true,"color":"yellow"},{"text":".","color":"gold"},{"text":" You have thirty seconds to click "},{"text":"[here]","bold":true,"color":"gray","clickEvent":{"action":"run_command","value":"/trigger new_theme set 1"}},{"text":" to obtain a new theme. This will cause you to lose a point.","color":"yellow"}]
team modify building prefix [{"text":"(","color":"blue","bold":true},{"text":"✮","bold":false},{"text":") ","bold":true}]
execute if score $number nine_block matches 1 run function game:random_blocks/fix_inventory
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
execute if score $number nine_block matches 0 run loot replace entity @a[tag=builder] hotbar.8 loot minecraft:options_book
execute at @e[tag=sponsor_marker,type=area_effect_cloud] run fill ~-2 ~-1 ~-2 ~26 110 ~-1 barrier
execute at @e[tag=sponsor_marker,type=area_effect_cloud] run fill ~-2 ~-1 ~-2 ~-1 110 ~26 barrier
execute at @e[tag=sponsor_marker,type=area_effect_cloud] run fill ~26 ~-1 ~-2 ~26 110 ~26 barrier
execute at @e[tag=sponsor_marker,type=area_effect_cloud] run fill ~-2 ~-1 ~26 ~26 110 ~26 barrier
execute as @a[tag=playing,tag=builder,scores={music=1}] at @s run playsound minecraft:music_disc.blocks record @a[tag=playing,tag=!no_music] ~ ~ ~ 100000 1
execute as @a[tag=playing,tag=builder,scores={music=2}] at @s run playsound minecraft:music_disc.stal record @a[tag=playing,tag=!no_music] ~ ~ ~ 100000 1
execute as @a[tag=playing,tag=builder,scores={music=3}] at @s run playsound minecraft:music_disc.strad record @a[tag=playing,tag=!no_music] ~ ~ ~ 100000 1
execute as @a[tag=playing,tag=builder,scores={music=4}] at @s run playsound minecraft:music_disc.far record @a[tag=playing,tag=!no_music] ~ ~ ~ 100000 1
execute as @a[tag=playing,tag=builder,scores={music=5}] at @s run playsound minecraft:music_disc.cat record @a[tag=playing,tag=!no_music] ~ ~ ~ 100000 1.5
execute as @a[tag=playing,tag=builder,scores={music=6}] at @s run playsound minecraft:music_disc.chirp record @a[tag=playing,tag=!no_music] ~ ~ ~ 100000 1.11
execute as @a[tag=playing,tag=builder,scores={music=7}] at @s run playsound minecraft:music_disc.mellohi record @a[tag=playing,tag=!no_music] ~ ~ ~ 100000 0
execute as @a[tag=playing,tag=builder,scores={music=8}] at @s run playsound minecraft:music_disc.pigstep record @a[tag=playing,tag=!no_music] ~ ~ ~ 100000 1
execute as @a[tag=playing,tag=builder,scores={music=9}] at @s run playsound minecraft:music_disc.pigstep record @a[tag=playing,tag=!no_music] ~ ~ ~ 100000 1.15
advancement grant @a[tag=playing,tag=builder] only advancements:custom/visit_sponsor

scoreboard players set $30_sec game 600

execute store result score $starting_players game if entity @a[tag=playing]

scoreboard players set $correct_guesses game 0