execute at @e[tag=sponsor_marker,sort=nearest,limit=1] run fill ~24 ~ ~24 ~ ~ ~ obsidian
tellraw @s {"text":"The floor has been changed to obsidian.","color":"#64247f"}
playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 1