# called to put the item we're holding on our head
execute if data entity @s SelectedItem run item replace entity @s armor.head from entity @s weapon.mainhand
execute unless data entity @s SelectedItem run item replace entity @s armor.head from entity @s weapon.offhand
execute if data entity @s Inventory[{Slot:103b}] run tellraw @s ["",{"text":"☀ ","color":"yellow","bold":true},{"text":"Hat equipped!","color":"gray"}]
execute if data entity @s Inventory[{Slot:103b}] run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 0.85
scoreboard players reset @s hat