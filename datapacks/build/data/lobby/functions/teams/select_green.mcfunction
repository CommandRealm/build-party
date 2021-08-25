tellraw @s[team=green] {"text":"You're already on this team.","color":"red"}
playsound minecraft:block.note_block.didgeridoo master @s[team=green] ~ ~ ~ 100000 0
tellraw @s[team=!green] {"text":"You have joined green team!","color":"green"}
playsound minecraft:block.note_block.bit master @s[team=!green] ~ ~ ~ 100000 1.5
team join green @s