execute at @e[tag=sponsor_marker,sort=nearest,limit=1] run fill ~24 ~ ~24 ~ ~ ~ crimson_nylium
tellraw @s {"text":"The floor has been changed to crimson nylium.","color":"#d71821"}
playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 1