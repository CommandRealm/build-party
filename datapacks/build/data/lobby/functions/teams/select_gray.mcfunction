tellraw @s[team=gray] {"text":"You're already on this team.","color":"red"}
playsound minecraft:block.note_block.didgeridoo master @s[team=gray] ~ ~ ~ 100000 0
tellraw @s[team=!gray] {"text":"You have joined gray team!","color":"dark_gray"}
playsound minecraft:block.note_block.bit master @s[team=!gray] ~ ~ ~ 100000 1.5
team join gray @s