execute at @e[tag=sponsor_marker,sort=nearest,limit=1] run fill ~24 ~ ~24 ~ ~ ~ warped_nylium
tellraw @s {"text":"The floor has been changed to warped nylium.","color":"#3fcab5"}
playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 1