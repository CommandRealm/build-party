execute at @e[tag=sponsor_marker,sort=nearest,limit=1] run fill ~24 ~ ~24 ~ ~ ~ black_concrete
tellraw @s {"text":"The floor has been changed to black concrete.","color":"#3f3f3f"}
playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 1