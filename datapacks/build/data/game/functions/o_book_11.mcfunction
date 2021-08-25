execute at @e[tag=sponsor_marker,sort=nearest,limit=1] run fill ~24 ~ ~24 ~ ~ ~ end_stone
tellraw @s {"text":"The floor has been changed to end stone.","color":"light_purple"}
playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 1