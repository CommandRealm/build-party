tellraw @s[team=orange] {"text":"You're already on this team.","color":"red"}
playsound minecraft:block.note_block.didgeridoo master @s[team=orange] ~ ~ ~ 100000 0
tellraw @s[team=!orange] {"text":"You have joined orange team!","color":"#ff4e00"}
playsound minecraft:block.note_block.bit master @s[team=!orange] ~ ~ ~ 100000 1.5
team join orange @s