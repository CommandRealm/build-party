clear @s knowledge_book
kill @e[type=item,nbt={Item:{id:"minecraft:knowledge_book"}}]
replaceitem entity @s[scores={ready=0}] hotbar.4 knowledge_book{no_echest:1,Recipes:[{id:"minecraft:book"}],display:{Name:'[{"text":"Press ","color":"yellow","italic":false},{"keybind":"key.use","color":"gold"},{"text":" to play!","color":"yellow"}]'}}
replaceitem entity @s[scores={ready=1}] hotbar.4 knowledge_book{no_echest:1,Enchantments:[{id:"minecraft:easter_egg",lvl:1}],Recipes:[{id:"minecraft:book"}],display:{Name:'[{"text":"Press ","color":"gray","italic":false},{"keybind":"key.use","color":"white"},{"text":" to spectate.","color":"gray"}]'}}