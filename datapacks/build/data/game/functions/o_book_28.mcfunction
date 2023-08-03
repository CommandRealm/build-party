execute at @e[tag=sponsor_marker,sort=nearest,limit=1] run fill ~24 ~ ~24 ~ ~ ~ mud
tellraw @s {"text":"The floor has been changed to mud.","color":"#524b4c"}
playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 1