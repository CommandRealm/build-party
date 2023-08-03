# called to insert an item.
loot insert 6 3 -7 loot minecraft:every_block

# if spawn eggs are disabled make sure they are not in use
execute if score $number allow_entities matches 0 run function game:random_blocks/check_spawn_eggs

execute unless data block 6 3 -7 Items[{Slot:8b}] run function game:random_blocks/insert_random