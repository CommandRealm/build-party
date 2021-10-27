scoreboard players reset @s open_e_chest
function chest_menu:clear
scoreboard players set @s menu 3
item replace entity @s enderchest.0 with structure_void{echest: 1, HideFlags: 63, display: {Name: '[{"text":"No Hat","italic":false,"color":"gray"}]'}}
item replace entity @s[scores={hat=0}] enderchest.0 with structure_void{echest:1,HideFlags:63,display:{Name:'[{"text":"No Hat","italic":false,"color":"gray"}]',Lore:['[{"text":"Selected","italic":false,"color":"blue"}]']},Enchantments:[{id:"x",lvl:1}]}
item replace entity @s enderchest.1 with sea_lantern{echest: 1, HideFlags: 63, display: {Name: '[{"text":"Sea Lantern","italic":false,"color":"#d47b1b"}]', Lore: ['[{"text":"Common","color":"dark_green","italic":false}]']}}
item replace entity @s[scores={hat=1}] enderchest.1 with sea_lantern{echest:1,HideFlags:63,display:{Name:'[{"text":"Sea Lantern","italic":false,"color":"#d47b1b"}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]','[{"text":"Selected","italic":false,"color":"blue"}]']},Enchantments:[{id:"x",lvl:1}]}
item replace entity @s enderchest.2 with smithing_table{echest: 1, HideFlags: 63, display: {Name: '[{"text":"Smithing Table","italic":false,"color":"dark_gray"}]', Lore: ['[{"text":"Common","color":"dark_green","italic":false}]']}}
item replace entity @s[scores={hat=2}] enderchest.2 with smithing_table{echest:1,HideFlags:63,display:{Name:'[{"text":"Smithing Table","italic":false,"color":"dark_gray"}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]','[{"text":"Selected","italic":false,"color":"blue"}]']},Enchantments:[{id:"x",lvl:1}]}
item replace entity @s enderchest.3 with observer{echest: 1, HideFlags: 63, display: {Name: '[{"text":"Observer","italic":false,"color":"gray"}]', Lore: ['[{"text":"Common","color":"dark_green","italic":false}]']}}
item replace entity @s[scores={hat=3}] enderchest.3 with observer{echest:1,HideFlags:63,display:{Name:'[{"text":"Observer","italic":false,"color":"gray"}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]','[{"text":"Selected","italic":false,"color":"blue"}]']},Enchantments:[{id:"x",lvl:1}]}
item replace entity @s enderchest.4 with crafting_table{echest: 1, HideFlags: 63, display: {Name: '[{"text":"Crafting Table","italic":false,"color":"gold"}]', Lore: ['[{"text":"Common","color":"dark_green","italic":false}]']}}
item replace entity @s[scores={hat=4}] enderchest.4 with crafting_table{echest:1,HideFlags:63,display:{Name:'[{"text":"Crafting Table","italic":false,"color":"gold"}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]','[{"text":"Selected","italic":false,"color":"blue"}]']},Enchantments:[{id:"x",lvl:1}]}
item replace entity @s enderchest.5 with quartz_stairs{echest:1,HideFlags:63,display:{Name:'[{"text":Quartz Stairs","italic":false,"color":"white"}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]']}}
item replace entity @s[scores={hat=5}] enderchest.5 with quartz_stairs{echest:1,HideFlags:63,display:{Name:'[{"text":"Quartz Stairs","italic":false,"color":"white"}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]','[{"text":"Selected","italic":false,"color":"blue"}]']},Enchantments:[{id:"x",lvl:1}]}
item replace entity @s enderchest.6 with oak_fence{echest: 1, HideFlags: 63, display: {Name: '[{"text":"Fence","italic":false,"color":"yellow"}]', Lore: ['[{"text":"Common","color":"dark_green","italic":false}]']}}
item replace entity @s[scores={hat=6}] enderchest.6 with oak_fence{echest:1,HideFlags:63,display:{Name:'[{"text":"Fence","italic":false,"color":"yellow"}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]','[{"text":"Selected","italic":false,"color":"blue"}]']},Enchantments:[{id:"x",lvl:1}]}
item replace entity @s enderchest.7 with lectern{echest: 1, HideFlags: 63, display: {Name: '[{"text":"Lectern","italic":false,"color":"aqua"}]', Lore: ['[{"text":"Common","color":"dark_green","italic":false}]']}}
item replace entity @s[scores={hat=7}] enderchest.7 with lectern{echest:1,HideFlags:63,display:{Name:'[{"text":"Lectern","italic":false,"color":"aqua"}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]','[{"text":"Selected","italic":false,"color":"blue"}]']},Enchantments:[{id:"x",lvl:1}]}
item replace entity @s enderchest.8 with grindstone{echest: 1, HideFlags: 63, display: {Name: '[{"text":"Grindstone","italic":false,"color":"red"}]', Lore: ['[{"text":"Common","color":"dark_green","italic":false}]']}}
item replace entity @s[scores={hat=8}] enderchest.8 with grindstone{echest:1,HideFlags:63,display:{Name:'[{"text":"Grindstone","italic":false,"color":"red"}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]','[{"text":"Selected","italic":false,"color":"blue"}]']},Enchantments:[{id:"x",lvl:1}]}
item replace entity @s enderchest.9 with daylight_detector{echest: 1, HideFlags: 63, display: {Name: '[{"text":"Daylight Detector","italic":false,"color":"yellow"}]', Lore: ['[{"text":"Common","color":"dark_green","italic":false}]']}}
item replace entity @s[scores={hat=9}] enderchest.9 with daylight_detector{echest:1,HideFlags:63,display:{Name:'[{"text":"Daylight Detector","italic":false,"color":"yellow"}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]','[{"text":"Selected","italic":false,"color":"blue"}]']},Enchantments:[{id:"x",lvl:1}]}
item replace entity @s enderchest.10 with cookie{echest: 1, HideFlags: 63, display: {Name: '[{"text":"Cookie","italic":false,"color":"gold"}]', Lore: ['[{"text":"Common","color":"dark_green","italic":false}]']}}
item replace entity @s[scores={hat=10}] enderchest.10 with cookie{echest:1,HideFlags:63,display:{Name:'[{"text":"Cookie","italic":false,"color":"gold""}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]','[{"text":"Selected","italic":false,"color":"blue"}]']},Enchantments:[{id:"x",lvl:1}]}
item replace entity @s enderchest.11 with campfire{echest: 1, HideFlags: 63, display: {Name: '[{"text":"Campfire","italic":false,"color":"red"}]', Lore: ['[{"text":"Common","color":"dark_green","italic":false}]']}}
item replace entity @s[scores={hat=11}] enderchest.11 with campfire{echest:1,HideFlags:63,display:{Name:'[{"text":"Campfire","italic":false,"color":"red"}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]','[{"text":"Selected","italic":false,"color":"blue"}]']},Enchantments:[{id:"x",lvl:1}]}

item replace entity @s[tag=!unlock_h_12] enderchest.12 with red_stained_glass_pane{echest: 1, HideFlags: 63, display: {Name: '[{"text":"Ender Chest","italic":false,"color":"light_purple"}]', Lore: ['[{"text":"Epic","color":"dark_purple","italic":false}]', '[{"text":"Locked","italic":false,"color":"red"}]']}}
item replace entity @s[tag=unlock_h_12] enderchest.12 with ender_chest{echest: 1, HideFlags: 63, display: {Name: '[{"text":"Ender Chest","italic":false,"color":"light_purple"}]', Lore: ['[{"text":"Epic","color":"dark_purple","italic":false}]']}}
item replace entity @s[scores={hat=12}] enderchest.12 with ender_chest{echest:1,HideFlags:63,display:{Name:'[{"text":"Ender Chest","italic":false,"color":"light_purple"}]',Lore:['[{"text":"Epic","color":"dark_purple","italic":false}]','[{"text":"Selected","italic":false,"color":"blue"}]']},Enchantments:[{id:"x",lvl:1}]}

item replace entity @s[tag=!unlock_h_13] enderchest.13 with red_stained_glass_pane{echest: 1, HideFlags: 63, display: {Name: '[{"text":"Honey","italic":false,"color":"gold"}]', Lore: ['[{"text":"Epic","color":"dark_purple","italic":false}]', '[{"text":"Locked","italic":false,"color":"red"}]']}}
item replace entity @s[tag=unlock_h_13] enderchest.13 with honey_block{echest: 1, HideFlags: 63, display: {Name: '[{"text":"Honey","italic":false,"color":"gold"}]', Lore: ['[{"text":"Epic","color":"dark_purple","italic":false}]']}}
item replace entity @s[scores={hat=13}] enderchest.13 with honey_block{echest:1,HideFlags:63,display:{Name:'[{"text":"Honey","italic":false,"color":"gold"}]',Lore:['[{"text":"Epic","color":"dark_purple","italic":false}]','[{"text":"Selected","italic":false,"color":"blue"}]']},Enchantments:[{id:"x",lvl:1}]}

item replace entity @s[tag=!unlock_h_14] enderchest.14 with red_stained_glass_pane{echest: 1, HideFlags: 63, display: {Name: '[{"text":"Big Brain","italic":false,"color":"aqua"}]', Lore: ['[{"text":"Epic","color":"dark_purple","italic":false}]', '[{"text":"Locked","italic":false,"color":"red"}]']}}
item replace entity @s[tag=unlock_h_14] enderchest.14 with brain_coral_block{echest: 1, HideFlags: 63, display: {Name: '[{"text":"Big Brain","italic":false,"color":"aqua"}]', Lore: ['[{"text":"Epic","color":"dark_purple","italic":false}]']}}
item replace entity @s[scores={hat=14}] enderchest.14 with brain_coral_block{echest:1,HideFlags:63,display:{Name:'[{"text":"Big Brain","italic":false,"color":"aqua"}]',Lore:['[{"text":"Epic","color":"dark_purple","italic":false}]','[{"text":"Selected","italic":false,"color":"blue"}]']},Enchantments:[{id:"x",lvl:1}]}

item replace entity @s[tag=!unlock_h_15] enderchest.15 with red_stained_glass_pane{echest: 1, HideFlags: 63, display: {Name: '[{"text":"Dragon","italic":false,"color":"dark_purple"}]', Lore: ['[{"text":"Epic","color":"dark_purple","italic":false}]', '[{"text":"Locked","italic":false,"color":"red"}]']}}
item replace entity @s[tag=unlock_h_15] enderchest.15 with dragon_head{echest: 1, HideFlags: 63, display: {Name: '[{"text":"Dragon","italic":false,"color":"dark_purple"}]', Lore: ['[{"text":"Epic","color":"dark_purple","italic":false}]']}}
item replace entity @s[scores={hat=15}] enderchest.15 with dragon_head{echest:1,HideFlags:63,display:{Name:'[{"text":"Dragon","italic":false,"color":"dark_purple"}]',Lore:['[{"text":"Epic","color":"dark_purple","italic":false}]','[{"text":"Selected","italic":false,"color":"blue"}]']},Enchantments:[{id:"x",lvl:1}]}

item replace entity @s[tag=!unlock_h_16] enderchest.16 with red_stained_glass_pane{echest: 1, HideFlags: 63, display: {Name: '[{"text":"Stonecutter","italic":false,"color":"gold"}]', Lore: ['[{"text":"Legendary","color":"gold","italic":false}]', '[{"text":"Locked","italic":false,"color":"red"}]']}}
item replace entity @s[tag=unlock_h_16] enderchest.16 with stonecutter{echest: 1, HideFlags: 63, display: {Name: '[{"text":"Stonecutter","italic":false,"color":"gold"}]', Lore: ['[{"text":"Legendary","color":"gold","italic":false}]']}}
item replace entity @s[scores={hat=16}] enderchest.16 with stonecutter{echest:1,HideFlags:63,display:{Name:'[{"text":"Stonecutter","italic":false,"color":"gold"}]',Lore:['[{"text":"Legendary","color":"gold","italic":false}]','[{"text":"Selected","italic":false,"color":"blue"}]']},Enchantments:[{id:"x",lvl:1}]}

item replace entity @s[tag=!unlock_h_17] enderchest.17 with red_stained_glass_pane{echest: 1, HideFlags: 63, display: {Name: '[{"text":"Head Bulge","italic":false,"color":"green"}]', Lore: ['[{"text":"Legendary","color":"gold","italic":false}]', '[{"text":"Locked","italic":false,"color":"red"}]']}}
item replace entity @s[tag=unlock_h_17] enderchest.17 with player_head{echest: 1, HideFlags: 63, display: {Name: '[{"text":"Head Bulge","italic":false,"color":"green"}]', Lore: ['[{"text":"Legendary","color":"gold","italic":false}]']}}
item replace entity @s[scores={hat=17}] enderchest.17 with player_head{echest:1,HideFlags:63,display:{Name:'[{"text":"Head Bulge","italic":false,"color":"green"}]',Lore:['[{"text":"Legendary","color":"gold","italic":false}]','[{"text":"Selected","italic":false,"color":"blue"}]']},Enchantments:[{id:"x",lvl:1}]}


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