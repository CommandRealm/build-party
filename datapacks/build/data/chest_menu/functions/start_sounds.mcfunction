scoreboard players reset @s open_e_chest
function chest_menu:clear
scoreboard players set @s menu 8
item replace entity @s enderchest.0 with note_block{echest: 1, HideFlags: 63, display: {Name: '[{"text":"Chime","italic":false,"color":"gold"}]'}}
item replace entity @s[scores={guess_sounds=0}] enderchest.0 with note_block{echest:1,HideFlags:63,display:{Name:'[{"text":"Chime","italic":false,"color":"gold"}]',Lore:['[{"text":"Selected","italic":false,"color":"blue"}]']},Enchantments:[{id:"aqua_affinity",lvl:1}]}
item replace entity @s enderchest.1 with anvil{echest: 1, HideFlags: 63, display: {Name: '[{"text":"Anvil","italic":false,"color":"dark_gray"}]', Lore: ['[{"text":"Common","color":"dark_green","italic":false}]']}}
item replace entity @s[scores={guess_sounds=1}] enderchest.1 with anvil{echest:1,HideFlags:63,display:{Name:'[{"text":"Anvil","italic":false,"color":"dark_gray"}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]','[{"text":"Selected","italic":false,"color":"blue"}]']},Enchantments:[{id:"aqua_affinity",lvl:1}]}
item replace entity @s enderchest.2 with beacon{echest: 1, HideFlags: 63, display: {Name: '[{"text":"Beacon","italic":false,"color":"aqua"}]', Lore: ['[{"text":"Common","color":"dark_green","italic":false}]']}}
item replace entity @s[scores={guess_sounds=2}] enderchest.2 with beacon{echest:1,HideFlags:63,display:{Name:'[{"text":"Beacon","italic":false,"color":"aqua"}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]','[{"text":"Selected","italic":false,"color":"blue"}]']},Enchantments:[{id:"aqua_affinity",lvl:1}]}
item replace entity @s enderchest.3 with amethyst_cluster{echest: 1, HideFlags: 63, display: {Name: '[{"text":"Amethyst","italic":false,"color":"light_purple"}]', Lore: ['[{"text":"Common","color":"dark_green","italic":false}]']}}
item replace entity @s[scores={guess_sounds=3}] enderchest.3 with amethyst_cluster{echest:1,HideFlags:63,display:{Name:'[{"text":"Amethyst","italic":false,"color":"light_purple"}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]','[{"text":"Selected","italic":false,"color":"blue"}]']},Enchantments:[{id:"aqua_affinity",lvl:1}]}
item replace entity @s enderchest.4 with ghast_tear{echest: 1, HideFlags: 63, display: {Name: '[{"text":"Ghast","italic":false,"color":"gray"}]', Lore: ['[{"text":"Common","color":"dark_green","italic":false}]']}}
item replace entity @s[scores={guess_sounds=4}] enderchest.4 with ghast_tear{echest:1,HideFlags:63,display:{Name:'[{"text":"Ghast","italic":false,"color":"gray"}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]','[{"text":"Selected","italic":false,"color":"blue"}]']},Enchantments:[{id:"aqua_affinity",lvl:1}]}
item replace entity @s enderchest.5 with bone{echest: 1, HideFlags: 63, display: {Name: '[{"text":"Convert","italic":false,"color":"white"}]', Lore: ['[{"text":"Common","color":"dark_green","italic":false}]']}}
item replace entity @s[scores={guess_sounds=5}] enderchest.5 with bone{echest:1,HideFlags:63,display:{Name:'[{"text":"Convert","italic":false,"color":"white"}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]','[{"text":"Selected","italic":false,"color":"blue"}]']},Enchantments:[{id:"aqua_affinity",lvl:1}]}

item replace entity @s[tag=!unlock_so_6] enderchest.6 with red_stained_glass_pane{echest: 1, HideFlags: 63, display: {Name: '[{"text":"Trident","italic":false,"color":"#5eafaa"}]', Lore: ['[{"text":"Epic","color":"dark_purple","italic":false}]', '[{"text":"Locked","italic":false,"color":"red"}]']}}
item replace entity @s[tag=unlock_so_6] enderchest.6 with trident{echest: 1, HideFlags: 63, display: {Name: '[{"text":"Trident","italic":false,"color":"#5eafaa"}]', Lore: ['[{"text":"Epic","color":"dark_purple","italic":false}]']}}
item replace entity @s[scores={guess_sounds=6}] enderchest.6 with trident{echest:1,HideFlags:63,display:{Name:'[{"text":"Trident","italic":false,"color":"#5eafaa"}]',Lore:['[{"text":"Epic","color":"dark_purple","italic":false}]','[{"text":"Selected","italic":false,"color":"blue"}]']},Enchantments:[{id:"aqua_affinity",lvl:1}]}

item replace entity @s[tag=!unlock_so_7] enderchest.7 with red_stained_glass_pane{echest: 1, HideFlags: 63, display: {Name: '[{"text":"Donkey","italic":false,"color":"#9f866e"}]', Lore: ['[{"text":"Epic","color":"dark_purple","italic":false}]', '[{"text":"Locked","italic":false,"color":"red"}]']}}
item replace entity @s[tag=unlock_so_7] enderchest.7 with donkey_spawn_egg{echest: 1, HideFlags: 63, display: {Name: '[{"text":"Donkey","italic":false,"color":"#9f866e"}]', Lore: ['[{"text":"Epic","color":"dark_purple","italic":false}]']}}
item replace entity @s[scores={guess_sounds=7}] enderchest.7 with donkey_spawn_egg{echest:1,HideFlags:63,display:{Name:'[{"text":"Donkey","italic":false,"color":"#9f866e"}]',Lore:['[{"text":"Epic","color":"dark_purple","italic":false}]','[{"text":"Selected","italic":false,"color":"blue"}]']},Enchantments:[{id:"aqua_affinity",lvl:1}]}

item replace entity @s[tag=!unlock_so_8] enderchest.8 with red_stained_glass_pane{echest: 1, HideFlags: 63, display: {Name: '[{"text":"Goat","italic":false,"color":"gray"}]', Lore: ['[{"text":"Legendary","color":"gold","italic":false}]', '[{"text":"Locked","italic":false,"color":"red"}]']}}
item replace entity @s[tag=unlock_so_8] enderchest.8 with goat_spawn_egg{echest: 1, HideFlags: 63, display: {Name: '[{"text":"Goat","italic":false,"color":"gray"}]', Lore: ['[{"text":"Legendary","color":"gold","italic":false}]']}}
item replace entity @s[scores={guess_sounds=8}] enderchest.8 with goat_spawn_egg{echest:1,HideFlags:63,display:{Name:'[{"text":"Goat","italic":false,"color":"gray"}]',Lore:['[{"text":"Legendary","color":"gold","italic":false}]','[{"text":"Selected","italic":false,"color":"blue"}]']},Enchantments:[{id:"aqua_affinity",lvl:1}]}


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