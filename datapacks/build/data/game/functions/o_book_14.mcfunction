execute at @e[tag=sponsor_marker,sort=nearest,limit=1] run fill ~24 ~ ~24 ~ ~ ~ snow_block
tellraw @s {"text":"The floor has been changed to snow.","color":"#909090"}
playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 1