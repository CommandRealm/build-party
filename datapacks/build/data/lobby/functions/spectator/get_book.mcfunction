clear @s knowledge_book
kill @e[type=item,nbt={Item:{id:"minecraft:knowledge_book"}},distance=..20]
replaceitem entity @s hotbar.4 knowledge_book{no_echest:1,Recipes:[{id:"minecraft:book"}],display:{Name:'[{"text":"Press ","color":"gray","italic":false},{"keybind":"key.use","color":"white","bold":true},{"text":" to spectate!","color":"gray","bold":false}]'},book_type:2}
