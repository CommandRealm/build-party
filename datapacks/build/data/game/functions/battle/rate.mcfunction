scoreboard players enable @s rate
execute if entity @s[scores={rate=1}] run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 10000000 0
execute if entity @s[scores={rate=2}] run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 10000000 0.6
execute if entity @s[scores={rate=3}] run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 10000000 0.7
execute if entity @s[scores={rate=4}] run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 10000000 0.8
execute if entity @s[scores={rate=5}] run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 10000000 0.9
execute if entity @s[scores={rate=6}] run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 10000000 1
execute if entity @s[scores={rate=7}] run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 10000000 1.1
execute if entity @s[scores={rate=8}] run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 10000000 1.2
execute if entity @s[scores={rate=9}] run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 10000000 1.3
execute if entity @s[scores={rate=10}] run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 10000000 1.4
scoreboard players operation @s[scores={rate=1..10}] final_rate = @s rate
scoreboard players set @s rate 0