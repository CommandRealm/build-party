scoreboard players reset @s open_e_chest
function chest_menu:clear
scoreboard players set @s menu 2
item replace entity @s enderchest.10 with netherite_helmet{echest: 1, HideFlags: 63, display: {Name: '[{"text":"Hats","italic":false,"color":"gold"}]'}}
item replace entity @s enderchest.12 with music_disc_wait{echest: 1, HideFlags: 63, display: {Name: '[{"text":"Music Tracks","italic":false,"color":"blue"}]'}}
item replace entity @s enderchest.14 with amethyst_shard{echest: 1, HideFlags: 63, display: {Name: '[{"text":"Correct ","italic":false,"color":"light_purple"},{"text":"Guess","italic":false,"color":"dark_purple"},{"text":" Sounds","italic":false,"color":"light_purple"}]'}}
item replace entity @s enderchest.16 with gold_nugget{Enchantments:[{id:"x",lvl:1}],echest:1,HideFlags:63,display:{Name:'[{"text":"Advancement Unlocks","italic":false,"color":"gold"}]'}}
item replace entity @s enderchest.18 with barrier{HideFlags: 63, echest: 1, display: {Name: '{"text":"Back","italic":false,"color":"red"}'}} 


playsound minecraft:ui.button.click master @s[scores={click_0=1..}] ~ ~ ~ 1000000 1
playsound minecraft:ui.button.click master @s[scores={click_1=1..}] ~ ~ ~ 1000000 1
playsound minecraft:ui.button.click master @s[scores={click_2=1..}] ~ ~ ~ 1000000 1
playsound minecraft:ui.button.click master @s[scores={click_3=1..}] ~ ~ ~ 1000000 1
playsound minecraft:ui.button.click master @s[scores={click_4=1..}] ~ ~ ~ 1000000 1
playsound minecraft:ui.button.click master @s[scores={click_5=1..}] ~ ~ ~ 1000000 1
playsound minecraft:ui.button.click master @s[scores={click_6=1..}] ~ ~ ~ 1000000 1
playsound minecraft:ui.button.click master @s[scores={click_7=1..}] ~ ~ ~ 1000000 1
playsound minecraft:ui.button.click master @s[scores={click_8=1..}] ~ ~ ~ 1000000 1
playsound minecraft:ui.button.click master @s[scores={click_9=1..}] ~ ~ ~ 1000000 1
playsound minecraft:ui.button.click master @s[scores={click_10=1..}] ~ ~ ~ 1000000 1
playsound minecraft:ui.button.click master @s[scores={click_11=1..}] ~ ~ ~ 1000000 1
playsound minecraft:ui.button.click master @s[scores={click_12=1..}] ~ ~ ~ 1000000 1
scoreboard players reset @s click_0
scoreboard players reset @s click_1
scoreboard players reset @s click_2
scoreboard players reset @s click_3
scoreboard players reset @s click_4
scoreboard players reset @s click_5
scoreboard players reset @s click_6
scoreboard players reset @s click_7
scoreboard players reset @s click_8
scoreboard players reset @s click_9
scoreboard players reset @s click_10
scoreboard players reset @s click_11
scoreboard players reset @s click_12