execute if entity @s[team=!blue,team=!orange,team=!green,team=!pink,team=!gray] run tellraw @s {"text":"You are not on a team.","color":"red"}
execute if entity @s[team=!blue,team=!orange,team=!green,team=!pink,team=!gray] run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100000 0
execute unless entity @s[team=!blue,team=!orange,team=!green,team=!pink,team=!gray] run tellraw @s {"text":"You have left your team!","color":"gray"}
execute unless entity @s[team=!blue,team=!orange,team=!green,team=!pink,team=!gray] run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 100000 1.5
function general:rank