execute at @e[tag=sponsor_marker,sort=nearest,limit=1] run fill ~24 ~ ~24 ~ ~ ~ white_concrete
tellraw @s {"text":"The floor has been changed to white concrete.","color":"gray"}
playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 1