execute at @e[tag=sponsor_marker,sort=nearest,limit=1] run fill ~24 ~ ~24 ~ ~ ~ spruce_planks
tellraw @s {"text":"The floor has been changed to spruce planks.","color":"#744917"}
playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 1