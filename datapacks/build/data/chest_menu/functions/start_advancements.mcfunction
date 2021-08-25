scoreboard players reset @s open_e_chest
function chest_menu:clear
scoreboard players set @s menu 7
replaceitem entity @s enderchest.18 barrier{echest:1,HideFlags:63,display:{Name:'{"text":"Back","color":"red","italic":false}'}}
replaceitem entity @s enderchest.10 black_stained_glass_pane{echest:1,HideFlags:63,display:{Name:'[{"text":"Exclusive Prefix","color":"dark_green","italic":false}]',Lore:['[{"text":"Complete advancements to unlock.","color":"green","italic":false}]']}}
replaceitem entity @s[advancements={custom/unlock_prefix=true}] enderchest.10 name_tag{echest:1,HideFlags:63,display:{Name:'[{"text":"Exclusive Prefix","color":"dark_green","italic":false}]',Lore:['[{"text":"Unlocked","color":"gold","italic":false}]']}}
replaceitem entity @s[tag=detective] enderchest.10 name_tag{echest:1,HideFlags:63,display:{Name:'[{"text":"Exclusive Prefix","color":"dark_green","italic":false}]',Lore:['[{"text":"Unlocked","color":"gold","italic":false}]','{"text":"Selected","color":"blue","italic":false}']},Enchantments:[{id:"l",lvl:1}]}

replaceitem entity @s enderchest.12 black_stained_glass_pane{echest:1,HideFlags:63,display:{Name:'[{"text":"Exclusive Hat","color":"#ff000c","italic":false}]',Lore:['[{"text":"Complete advancements to unlock.","color":"#850006","italic":false}]']}}
replaceitem entity @s[advancements={custom/unlock_hat=true}] enderchest.12 red_stained_glass{echest:1,HideFlags:63,display:{Name:'[{"text":"Exclusive Hat","color":"#ff000c","italic":false}]',Lore:['[{"text":"Unlocked","color":"gold","italic":false}]']}}
replaceitem entity @s[scores={hat=18}] enderchest.12 red_stained_glass{echest:1,HideFlags:63,display:{Name:'[{"text":"Exclusive Hat","color":"#ff000c","italic":false}]',Lore:['[{"text":"Unlocked","color":"gold","italic":false}]','{"text":"Selected","color":"blue","italic":false}']},Enchantments:[{id:"l",lvl:1}]}

replaceitem entity @s enderchest.14 black_stained_glass_pane{echest:1,HideFlags:63,display:{Name:'[{"text":"Exclusive Music Track","color":"#522929","italic":false}]',Lore:['[{"text":"Complete advancements to unlock.","color":"dark_red","italic":false}]']}}
replaceitem entity @s[advancements={custom/unlock_music=true}] enderchest.14 music_disc_pigstep{echest:1,HideFlags:63,display:{Name:'[{"text":"Exclusive Music Track","color":"#522929","italic":false}]',Lore:['[{"text":"Unlocked","color":"gold","italic":false}]']}}
replaceitem entity @s[scores={music=9}] enderchest.14 music_disc_pigstep{echest:1,HideFlags:63,display:{Name:'[{"text":"Exclusive Music Track","color":"#522929","italic":false}]',Lore:['[{"text":"Unlocked","color":"gold","italic":false}]','{"text":"Selected","color":"blue","italic":false}']},Enchantments:[{id:"l",lvl:1}]}

replaceitem entity @s enderchest.16 black_stained_glass_pane{echest:1,HideFlags:63,display:{Name:'[{"text":"Exclusive Suit","color":"dark_gray","italic":false}]',Lore:['[{"text":"Complete advancements to unlock.","color":"gray","italic":false}]']}}
replaceitem entity @s[advancements={custom/unlock_suit=true}] enderchest.16 netherite_chestplate{echest:1,HideFlags:63,display:{Name:'[{"text":"Exclusive Suit","color":"dark_gray","italic":false}]',Lore:['[{"text":"Unlocked","color":"gold","italic":false}]']}}
replaceitem entity @s[tag=n_suit] enderchest.16 netherite_chestplate{echest:1,HideFlags:63,display:{Name:'[{"text":"Exclusive Suit","color":"dark_gray","italic":false}]',Lore:['[{"text":"Unlocked","color":"gold","italic":false}]','{"text":"Selected","color":"blue","italic":false}']},Enchantments:[{id:"l",lvl:1}]}

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