scoreboard players reset @s open_e_chest
function chest_menu:clear
scoreboard players set @s menu 4
replaceitem entity @s enderchest.0 structure_void{echest:1,HideFlags:63,display:{Name:'[{"text":"No Music","italic":false,"color":"gray"}]'}}
replaceitem entity @s[scores={music=0}] enderchest.0 structure_void{echest:1,HideFlags:63,display:{Name:'[{"text":"No Music","italic":false,"color":"gray"}]',Lore:['[{"text":"Selected","italic":false,"color":"blue"}]']},Enchantments:[{id:"x",lvl:1}]}
replaceitem entity @s enderchest.1 music_disc_blocks{echest:1,HideFlags:63,display:{Name:'[{"text":"Blocks","italic":false,"color":"red"}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]']}}
replaceitem entity @s[scores={music=1}] enderchest.1 music_disc_blocks{echest:1,HideFlags:63,display:{Name:'[{"text":"Blocks","italic":false,"color":"red"}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]','[{"text":"Selected","italic":false,"color":"blue"}]']},Enchantments:[{id:"x",lvl:1}]}
replaceitem entity @s enderchest.2 music_disc_stal{echest:1,HideFlags:63,display:{Name:'[{"text":"Stal","italic":false,"color":"dark_gray"}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]']}}
replaceitem entity @s[scores={music=2}] enderchest.2 music_disc_stal{echest:1,HideFlags:63,display:{Name:'[{"text":"Stal","italic":false,"color":"dark_gray"}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]','[{"text":"Selected","italic":false,"color":"blue"}]']},Enchantments:[{id:"x",lvl:1}]}
replaceitem entity @s enderchest.3 music_disc_strad{echest:1,HideFlags:63,display:{Name:'[{"text":"Strad","italic":false,"color":"white"}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]']}}
replaceitem entity @s[scores={music=3}] enderchest.3 music_disc_strad{echest:1,HideFlags:63,display:{Name:'[{"text":"Strad","italic":false,"color":"white"}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]','[{"text":"Selected","italic":false,"color":"blue"}]']},Enchantments:[{id:"x",lvl:1}]}
replaceitem entity @s enderchest.4 music_disc_far{echest:1,HideFlags:63,display:{Name:'[{"text":"Far","italic":false,"color":"green"}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]']}}
replaceitem entity @s[scores={music=4}] enderchest.4 music_disc_far{echest:1,HideFlags:63,display:{Name:'[{"text":"Far","italic":false,"color":"green"}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]','[{"text":"Selected","italic":false,"color":"blue"}]']},Enchantments:[{id:"x",lvl:1}]}
replaceitem entity @s enderchest.5 music_disc_cat{echest:1,HideFlags:63,display:{Name:'[{"text":"Cat","italic":false,"color":"dark_green"}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]']}}
replaceitem entity @s[scores={music=5}] enderchest.5 music_disc_cat{echest:1,HideFlags:63,display:{Name:'[{"text":"Cat","italic":false,"color":"dark_green"}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]','[{"text":"Selected","italic":false,"color":"blue"}]']},Enchantments:[{id:"x",lvl:1}]}

replaceitem entity @s[tag=!unlock_m_6] enderchest.6 red_stained_glass_pane{echest:1,HideFlags:63,display:{Name:'[{"text":"Chirp","italic":false,"color":"#ff0000"}]',Lore:['[{"text":"Epic","color":"dark_purple","italic":false}]','[{"text":"Locked","italic":false,"color":"red"}]']}}
replaceitem entity @s[tag=unlock_m_6] enderchest.6 music_disc_chirp{echest:1,HideFlags:63,display:{Name:'[{"text":"Chirp","italic":false,"color":"#ff0000"}]',Lore:['[{"text":"Epic","color":"dark_purple","italic":false}]']}}
replaceitem entity @s[scores={music=6}] enderchest.6 music_disc_chirp{echest:1,HideFlags:63,display:{Name:'[{"text":"Chirp","italic":false,"color":"#ff0000"}]',Lore:['[{"text":"Epic","color":"dark_purple","italic":false}]','[{"text":"Selected","italic":false,"color":"blue"}]']},Enchantments:[{id:"x",lvl:1}]}

replaceitem entity @s[tag=!unlock_m_7] enderchest.7 red_stained_glass_pane{echest:1,HideFlags:63,display:{Name:'[{"text":"Mellohi","italic":false,"color":"#d30fd5"}]',Lore:['[{"text":"Epic","color":"dark_purple","italic":false}]','[{"text":"Locked","italic":false,"color":"red"}]']}}
replaceitem entity @s[tag=unlock_m_7] enderchest.7 music_disc_mellohi{echest:1,HideFlags:63,display:{Name:'[{"text":"Mellohi","italic":false,"color":"#d30fd5"}]',Lore:['[{"text":"Epic","color":"dark_purple","italic":false}]']}}
replaceitem entity @s[scores={music=7}] enderchest.7 music_disc_mellohi{echest:1,HideFlags:63,display:{Name:'[{"text":"Mellohi","italic":false,"color":"#d30fd5"}]',Lore:['[{"text":"Epic","color":"dark_purple","italic":false}]','[{"text":"Selected","italic":false,"color":"blue"}]']},Enchantments:[{id:"x",lvl:1}]}

replaceitem entity @s[tag=!unlock_m_8] enderchest.8 red_stained_glass_pane{echest:1,HideFlags:63,display:{Name:'[{"text":"Pigstep","italic":false,"color":"#522929"}]',Lore:['[{"text":"Legendary","color":"gold","italic":false}]','[{"text":"Locked","italic":false,"color":"red"}]']}}
replaceitem entity @s[tag=unlock_m_8] enderchest.8 music_disc_pigstep{echest:1,HideFlags:63,display:{Name:'[{"text":"Pigstep","italic":false,"color":"#522929"}]',Lore:['[{"text":"Legendary","color":"gold","italic":false}]']}}
replaceitem entity @s[scores={music=8}] enderchest.8 music_disc_pigstep{echest:1,HideFlags:63,display:{Name:'[{"text":"Pigstep","italic":false,"color":"#522929"}]',Lore:['[{"text":"Legendary","color":"gold","italic":false}]','[{"text":"Selected","italic":false,"color":"blue"}]']},Enchantments:[{id:"x",lvl:1}]}


replaceitem entity @s enderchest.18 barrier{HideFlags:63,echest:1,display:{Name:'{"text":"Back","italic":false,"color":"red"}'}} 


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