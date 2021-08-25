clear @s
kill @e[type=item,nbt={Item:{tag:{Voting:1}}}]
kill @e[type=item,nbt={Item:{tag:{Voting:2}}}]
kill @e[type=item,nbt={Item:{tag:{Voting:3}}}]
loot replace entity @s hotbar.3 loot minecraft:voting_option_1
loot replace entity @s hotbar.4 loot minecraft:voting_option_2
loot replace entity @s hotbar.5 loot minecraft:voting_option_3
playsound minecraft:entity.chicken.egg master @s ~ ~ ~ 1 1.5