# called to generate random blocks
setblock 6 3 -7 air
setblock 6 3 -7 chest

function game:random_blocks/insert_random
loot replace block 6 3 -7 container.8 loot options_book
data modify block 6 3 -7 Items[{Slot:0b}].Count set value 1
data modify block 6 3 -7 Items[{Slot:1b}].Count set value 1
data modify block 6 3 -7 Items[{Slot:2b}].Count set value 1
data modify block 6 3 -7 Items[{Slot:3b}].Count set value 1
data modify block 6 3 -7 Items[{Slot:4b}].Count set value 1
data modify block 6 3 -7 Items[{Slot:5b}].Count set value 1
data modify block 6 3 -7 Items[{Slot:6b}].Count set value 1
data modify block 6 3 -7 Items[{Slot:7b}].Count set value 1
data modify block 6 3 -7 Items[{Slot:8b}].Count set value 1