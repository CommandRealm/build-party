execute at @e[tag=sponsor_marker,sort=nearest,limit=1] run fill ~24 ~ ~24 ~ ~ ~ red_sand
tellraw @s {"text":"The floor has been changed to red sand.","color":"#d86d05"}
playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 1