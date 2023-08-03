# called when we are too high


tellraw @s ["",{"text":"☀ ","color":"yellow","bold":true},{"text":"You cannot go that high!","color":"red"}]
tp @s 0 66 0 0 -5
execute at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 1