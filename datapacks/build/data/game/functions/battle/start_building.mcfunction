tag @a[tag=playing] add delay_dnb_map
execute if score $number team matches 1 run function game:battle/fill_solo_areas
execute if score $number team matches 1 run schedule function game:battle/fill_solo_areas 5t
execute if score $number team matches 2.. run function game:battle/teams/start_building
execute as @a[tag=playing] at @s run function game:tp_to_build
execute if score $game state matches 1.. run schedule function game:battle/setup_areas 2t
title @a[tag=playing] title {"text":"Begin!","color":"yellow"}
title @a[tag=playing] subtitle [{"text":"You will be building: ","color":"yellow"},{"selector":"@e[tag=theme]","color":"gold","bold":true}]
tag @a[tag=playing] add builder
playsound minecraft:block.note_block.bit master @a[tag=playing] 0 66 0 10000 1.5
gamemode creative @a[tag=playing]
clear @a[tag=playing]
bossbar remove timer
bossbar add timer {"text":"Build time remaining","color":"blue","underlined":true}
bossbar set timer color red
bossbar set timer style progress
bossbar set minecraft:timer players @a[tag=playing]
execute store result bossbar minecraft:timer max run scoreboard players get $time set_battle_timer
execute store result bossbar minecraft:timer value run scoreboard players get $time set_battle_timer
scoreboard players operation $time game_timer = $time set_battle_timer
function game:update_bossbar
loot replace entity @a[tag=builder] hotbar.8 loot minecraft:options_book
execute as @a[tag=playing,tag=builder,scores={music=1}] at @s run playsound minecraft:music_disc.blocks record @s ~ ~ ~ 100000 1
execute as @a[tag=playing,tag=builder,scores={music=2}] at @s run playsound minecraft:music_disc.stal record @s ~ ~ ~ 100000 1
execute as @a[tag=playing,tag=builder,scores={music=3}] at @s run playsound minecraft:music_disc.strad record @s ~ ~ ~ 100000 1
execute as @a[tag=playing,tag=builder,scores={music=4}] at @s run playsound minecraft:music_disc.far record @s ~ ~ ~ 100000 1
execute as @a[tag=playing,tag=builder,scores={music=5}] at @s run playsound minecraft:music_disc.cat record @s ~ ~ ~ 100000 1.5
execute as @a[tag=playing,tag=builder,scores={music=6}] at @s run playsound minecraft:music_disc.chirp record @s ~ ~ ~ 100000 1.11
execute as @a[tag=playing,tag=builder,scores={music=7}] at @s run playsound minecraft:music_disc.mellohi record @s ~ ~ ~ 100000 0
execute as @a[tag=playing,tag=builder,scores={music=8}] at @s run playsound minecraft:music_disc.pigstep record @s ~ ~ ~ 100000 1
execute as @a[tag=playing,tag=builder,scores={music=9}] at @s run playsound minecraft:music_disc.pigstep record @s ~ ~ ~ 100000 1.15
