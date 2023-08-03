
kill @e[type=item,nbt={Age:0s,Item:{id:"minecraft:writable_book"}}]
kill @e[type=item,nbt={Age:1s,Item:{id:"minecraft:writable_book"}}]
kill @e[type=item,nbt={Age:0s,Item:{id:"minecraft:spyglass"}}]
kill @e[type=item,nbt={Age:1s,Item:{id:"minecraft:spyglass"}}]
execute if data entity @s SelectedItem{id:"minecraft:writable_book"} unless data entity @s Inventory[{Slot:4b,id:"minecraft:knowledge_book"}] run function game:guess/incorrect_guess
execute if score $number limited_guesses matches 1.. if data entity @s SelectedItem{id:"minecraft:writable_book"} unless data entity @s Inventory[{Slot:4b,id:"minecraft:knowledge_book"}] run scoreboard players remove @s limited_guesses 1
execute if score $number limited_guesses matches 1.. if data entity @s SelectedItem{id:"minecraft:writable_book"} unless data entity @s Inventory[{Slot:4b,id:"minecraft:knowledge_book"}] run tellraw @s[scores={limited_guesses=2..}] [{"text":"- ","color":"gray"},{"text":"You have ","color":"gold"},{"score":{"objective":"limited_guesses","name":"@s"},"color":"yellow","bold":true},{"text":" guesses remaining","color":"gold"}]
execute if score $number limited_guesses matches 1.. if data entity @s SelectedItem{id:"minecraft:writable_book"} unless data entity @s Inventory[{Slot:4b,id:"minecraft:knowledge_book"}] run tellraw @s[scores={limited_guesses=1}] [{"text":"- ","color":"gray"},{"text":"You have ","color":"gold"},{"score":{"objective":"limited_guesses","name":"@s"},"color":"yellow","bold":true},{"text":" guess remaining","color":"gold"}]
execute if score $number limited_guesses matches 1.. if data entity @s SelectedItem{id:"minecraft:writable_book"} unless data entity @s Inventory[{Slot:4b,id:"minecraft:knowledge_book"}] if score @s limited_guesses matches ..0 run function game:guess/out_of_guesses
clear @s writable_book
clear @s spyglass
function game:guess/fill_books
item replace entity @s hotbar.8 with spyglass{display:{Name:'[{"text":"Spyglass","color":"gold","italic":false}]'}}

scoreboard players set @s book_delay 0
