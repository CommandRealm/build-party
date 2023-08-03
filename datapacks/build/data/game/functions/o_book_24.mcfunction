execute at @e[tag=sponsor_marker,sort=nearest,limit=1] run fill ~24 ~ ~24 ~ ~ ~ stone_bricks
tellraw @s {"text":"The floor has been changed to stone bricks.","color":"#b3b3b3"}
playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 1