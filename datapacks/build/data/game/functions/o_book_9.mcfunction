execute at @e[tag=sponsor_marker,sort=nearest,limit=1] run fill ~24 ~ ~24 ~ ~ ~ air
execute at @e[tag=sponsor_marker,sort=nearest,limit=1] run fill ~24 ~ ~24 ~ ~ ~ lava
tellraw @s {"text":"The floor has been changed to lava.","color":"gold"}
playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 1