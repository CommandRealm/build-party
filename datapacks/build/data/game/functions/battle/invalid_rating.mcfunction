scoreboard players enable @s rate
title @s title {"text":" "}
title @s subtitle {"text":"You can't vote for your own build!","color":"red"}
playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100000 0
scoreboard players set @s rate 0