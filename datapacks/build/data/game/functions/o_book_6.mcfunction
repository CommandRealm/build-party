execute at @e[tag=sponsor_marker,sort=nearest,limit=1] run fill ~24 ~ ~24 ~ ~ ~ quartz_block
tellraw @s {"text":"The floor has been changed to quartz.","color":"gray"}
playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 1