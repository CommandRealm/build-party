scoreboard players reset @s open_e_chest
function chest_menu:clear
scoreboard players set @s menu 0
item replace entity @s enderchest.9 with map{echest: 1, HideFlags: 63, display: {Name: '{"text":"Sponsorships","color":"blue","bold":true,"italic":false}'}}
item replace entity @s enderchest.11 with golden_helmet{echest: 1, HideFlags: 63, display: {Name: '{"text":"Cosmetics","color":"gold","bold":true,"italic":false}'}}
item replace entity @s enderchest.13 with nether_star{echest: 1, HideFlags: 63, display: {Name: '{"text":"Statistics","color":"green","bold":true,"italic":false}'}}
item replace entity @s enderchest.15 with comparator{echest: 1, HideFlags: 63, display: {Name: '[{"text":"Personal ","color":"dark_purple","bold":true,"italic":false},{"text":"Options","color":"light_purple"}]'}}
item replace entity @s enderchest.17 with command_block{echest: 1, HideFlags: 63, display: {Name: '{"text":"Credits","color":"aqua","bold":true,"italic":false}'}}
execute unless entity @s[tag=!has_test,tag=!has_help,tag=!has_bld,tag=!has_srbld,tag=!has_prg,tag=!has_srprg,tag=!has_manager,tag=!has_lead,tag=!has_pc,tag=!has_cr,tag=!has_art] run item replace entity @s enderchest.26 with written_book{echest:1,HideFlags:63,display:{Name:'[{"text":"Titles","bold":true,"italic":false,"color":"white"}]'}}


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
