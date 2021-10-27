kill @e[type=item,nbt={Age:0s,Item:{id:"minecraft:spyglass"}}]
kill @e[type=item,nbt={Age:1s,Item:{id:"minecraft:spyglass"}}]
clear @s spyglass
item replace entity @s hotbar.8 with spyglass{display:{Name:'[{"text":"Spyglass","color":"gold","italic":false}]'}}