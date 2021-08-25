tellraw @s[team=pink] {"text":"You're already on this team.","color":"red"}
playsound minecraft:block.note_block.didgeridoo master @s[team=pink] ~ ~ ~ 100000 0
tellraw @s[team=!pink] {"text":"You have joined pink team!","color":"light_purple"}
playsound minecraft:block.note_block.bit master @s[team=!pink] ~ ~ ~ 100000 1.5
team join pink @s