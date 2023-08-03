tag @a[tag=playing] add delay_dnb_map
execute if score $number team matches 1 run function game:battle/fill_solo_areas
execute if score $number team matches 1 run schedule function game:battle/fill_solo_areas 5t
execute if score $number team matches 2.. run function game:battle/teams/start_building
execute as @a[tag=playing] at @s run function game:tp_to_build
execute if score $game state matches 1.. run schedule function game:battle/setup_areas 2t
title @a[tag=playing] title {"text":"Begin!","color":"yellow"}
title @a[tag=playing] subtitle [{"text":"You will be building: ","color":"gold"},{"nbt":"Theme","storage":"minecraft:theme","interpret":true,"color":"yellow","bold":false}]
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
execute if score $number nine_block matches 0 run loot replace entity @a[tag=builder] hotbar.8 loot minecraft:options_book
execute as @a[tag=playing,tag=builder,scores={music=1},tag=!no_music] at @s run playsound minecraft:music_disc.blocks record @s ~ ~ ~ 100000 1
execute as @a[tag=playing,tag=builder,scores={music=2},tag=!no_music] at @s run playsound minecraft:music_disc.stal record @s ~ ~ ~ 100000 1
execute as @a[tag=playing,tag=builder,scores={music=3},tag=!no_music] at @s run playsound minecraft:music_disc.strad record @s ~ ~ ~ 100000 1
execute as @a[tag=playing,tag=builder,scores={music=4},tag=!no_music] at @s run playsound minecraft:music_disc.far record @s ~ ~ ~ 100000 1
execute as @a[tag=playing,tag=builder,scores={music=5},tag=!no_music] at @s run playsound minecraft:music_disc.cat record @s ~ ~ ~ 100000 1.5
execute as @a[tag=playing,tag=builder,scores={music=6},tag=!no_music] at @s run playsound minecraft:music_disc.chirp record @s ~ ~ ~ 100000 1.11
execute as @a[tag=playing,tag=builder,scores={music=7},tag=!no_music] at @s run playsound minecraft:music_disc.mellohi record @s ~ ~ ~ 100000 0
execute as @a[tag=playing,tag=builder,scores={music=8},tag=!no_music] at @s run playsound minecraft:music_disc.pigstep record @s ~ ~ ~ 100000 1
execute as @a[tag=playing,tag=builder,scores={music=9},tag=!no_music] at @s run playsound minecraft:music_disc.pigstep record @s ~ ~ ~ 100000 1.15


execute if score $number nine_block matches 1 run function game:random_blocks/fix_inventory