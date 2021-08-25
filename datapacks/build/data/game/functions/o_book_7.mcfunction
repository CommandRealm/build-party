execute at @e[tag=sponsor_marker,sort=nearest,limit=1] run clone ~24 5 ~24 ~ 5 ~ ~ ~ ~
tellraw @s {"text":"The floor has been restored to its default.","color":"gray"}
playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 1