execute at @e[tag=sponsor_marker,sort=nearest,limit=1] run fill ~24 ~ ~24 ~ ~ ~ mycelium
tellraw @s {"text":"The floor has been changed to mycelium.","color":"#b95ba8"}
playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 1