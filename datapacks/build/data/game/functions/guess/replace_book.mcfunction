clear @s writable_book
kill @e[type=item,nbt={Age:0s,Item:{id:"minecraft:writable_book"}}]
kill @e[type=item,nbt={Age:1s,Item:{id:"minecraft:writable_book"}}]
function game:guess/fill_books
playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 0.75
scoreboard players set @s book_delay 0