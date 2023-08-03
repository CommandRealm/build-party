execute at @e[tag=sponsor_marker,sort=nearest,limit=1] run fill ~24 ~ ~24 ~ ~ ~ prismarine
tellraw @s {"text":"The floor has been changed to prismarine.","color":"#4bbdb9"}
playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 1