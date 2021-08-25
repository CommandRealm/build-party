tellraw @s[team=blue] {"text":"You're already on this team.","color":"red"}
playsound minecraft:block.note_block.didgeridoo master @s[team=blue] ~ ~ ~ 100000 0
tellraw @s[team=!blue] {"text":"You have joined blue team!","color":"aqua"}
playsound minecraft:block.note_block.bit master @s[team=!blue] ~ ~ ~ 100000 1.5
team join blue @s