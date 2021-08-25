clear @s netherite_chestplate{suit:1}
clear @s netherite_leggings{suit:1}
clear @s netherite_boots{suit:1}
kill @e[type=item,nbt={Item:{tag:{suit:1}}}]
replaceitem entity @s armor.chest netherite_chestplate{suit:1,HideFlags:63,AttributeModifiers:[{Name:"generic.armor",AttributeName:"generic.armor",Amount:0,UUID:[I; 160, 160, 160, 160]}]}
replaceitem entity @s armor.legs netherite_leggings{suit:1,HideFlags:63,AttributeModifiers:[{Name:"generic.armor",AttributeName:"generic.armor",Amount:0,UUID:[I; 160, 160, 160, 160]}]}
replaceitem entity @s armor.feet netherite_boots{suit:1,HideFlags:63,AttributeModifiers:[{Name:"generic.armor",AttributeName:"generic.armor",Amount:0,UUID:[I; 160, 160, 160, 160]}]}