execute at @e[tag=sponsor_marker,sort=nearest,limit=1] run fill ~24 ~ ~24 ~ ~ ~ birch_planks
tellraw @s {"text":"The floor has been changed to birch planks.","color":"#909090"}
playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 1