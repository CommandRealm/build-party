execute at @e[tag=sponsor_marker,sort=nearest,limit=1] run fill ~24 ~ ~24 ~ ~ ~ sand
tellraw @s {"text":"The floor has been changed to sand.","color":"#aaa685"}
playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 1