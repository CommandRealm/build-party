scoreboard players set @s vending_machine 100
scoreboard players set $mod vending_machine 15
summon area_effect_cloud ~ ~1 ~ {Tags:["random"],Age:1}
execute store result score $rand vending_machine run data get entity @e[type=area_effect_cloud,tag=random,limit=1] UUID[0] 1
scoreboard players operation $rand vending_machine %= $mod vending_machine
kill @e[type=area_effect_cloud,tag=random]
execute if score $rand vending_machine matches 0 run give @p apple{no_echest:1,HideFlags:63,display:{Name:'{"text":"Apple","italic":false,"color":"red"}'},vending_machine:1}
execute if score $rand vending_machine matches 1 run give @p bread{no_echest:1,HideFlags:63,display:{Name:'{"text":"Bread","italic":false,"color":"gold"}'},vending_machine:1}
execute if score $rand vending_machine matches 2 run give @p pufferfish{no_echest:1,HideFlags:63,display:{Name:'{"text":"Pufferfish","italic":false,"color":"yellow"}'},vending_machine:1}
execute if score $rand vending_machine matches 3 run give @p cooked_salmon{no_echest:1,HideFlags:63,display:{Name:'{"text":"Salmon","italic":false,"color":"red"}'},vending_machine:1}
execute if score $rand vending_machine matches 4 run give @p cookie{no_echest:1,HideFlags:63,display:{Name:'{"text":"Cookie","italic":false,"color":"yellow"}'},vending_machine:1}
execute if score $rand vending_machine matches 5 run give @p melon_slice{no_echest:1,HideFlags:63,display:{Name:'{"text":"Melon","italic":false,"color":"green"}'},vending_machine:1}
execute if score $rand vending_machine matches 6 run give @p dried_kelp{no_echest:1,HideFlags:63,display:{Name:'{"text":"Kelp","italic":false,"color":"#0b4200"}'},vending_machine:1}
execute if score $rand vending_machine matches 7 run give @p spider_eye{no_echest:1,HideFlags:63,display:{Name:'{"text":"Spider Eye","italic":false,"color":"#8b0000"}'},vending_machine:1}
execute if score $rand vending_machine matches 8 run give @p baked_potato{no_echest:1,HideFlags:63,display:{Name:'{"text":"Potato","italic":false,"color":"#ffd988"}'},vending_machine:1}
execute if score $rand vending_machine matches 9 run give @p sweet_berries{no_echest:1,HideFlags:63,display:{Name:'{"text":"Berries","italic":false,"color":"#e64054"}'},vending_machine:1}
execute if score $rand vending_machine matches 10 run give @p potion{no_echest:1,HideFlags:63,display:{Name:'{"text":"Energy Drink","italic":false,"color":"dark_blue"}'},vending_machine:2,CustomPotionColor:2714506,custom_potion_effects:[{id:"minecraft:speed",amplifier:2,show_icon:1b,show_particles:1b,duration:300}]}
execute if score $rand vending_machine matches 11 run give @p potion{no_echest:1,HideFlags:63,display:{Name:'{"text":"Chocolate Milk","italic":false,"color":"#513106"}'},vending_machine:2,CustomPotionColor:5320966}
execute if score $rand vending_machine matches 12 run give @p potion{no_echest:1,HideFlags:63,display:{Name:'{"text":"Bottled Water","italic":false,"color":"blue"}'},vending_machine:2,Potion:"minecraft:water"}
execute if score $rand vending_machine matches 13 run give @p potion{no_echest:1,HideFlags:63,display:{Name:'{"text":"Lemonade","italic":false,"color":"yellow"}'},vending_machine:2,CustomPotionColor:16770048}
execute if score $rand vending_machine matches 14 run give @p potion{no_echest:1,HideFlags:63,display:{Name:'{"text":"Smoothie","italic":false,"color":"#d180dd"}'},vending_machine:2,CustomPotionColor:13730013}
advancement grant @p only game:custom/use_vending_machine
playsound minecraft:block.dispenser.dispense master @p ~ ~ ~ 100000 1
