clear @s writable_book
clear @s spyglass
kill @e[type=item,nbt={Age:0s,Item:{id:"minecraft:writable_book"}}]
kill @e[type=item,nbt={Age:1s,Item:{id:"minecraft:writable_book"}}]
kill @e[type=item,nbt={Age:0s,Item:{id:"minecraft:spyglass"}}]
kill @e[type=item,nbt={Age:1s,Item:{id:"minecraft:spyglass"}}]
execute if score $number limited_guesses matches 1.. unless data entity @s Inventory[{Slot:4b,id:"minecraft:knowledge_book"}] run scoreboard players remove @s limited_guesses 1
execute if score $number limited_guesses matches 1.. unless data entity @s Inventory[{Slot:4b,id:"minecraft:knowledge_book"}] run tellraw @s [{"text":"- ","color":"gray"},{"text":"You have ","color":"gold"},{"score":{"objective":"limited_guesses","name":"@s"},"color":"yellow","bold":true},{"text":" guesses remaining","color":"gold"}]
execute if score $number limited_guesses matches 1.. unless data entity @s Inventory[{Slot:4b,id:"minecraft:knowledge_book"}] if score @s limited_guesses matches ..0 run function game:guess/out_of_guesses
function game:guess/fill_books
item replace entity @s hotbar.8 with spyglass{display:{Name:'[{"text":"Spyglass","color":"gold","italic":false}]'}}
playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 0.75
scoreboard players set @s book_delay 0
