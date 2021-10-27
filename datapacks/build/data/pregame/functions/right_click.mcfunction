scoreboard players set @s rc 0
scoreboard players add @s ready 1
scoreboard players set @s[scores={ready=2..}] ready 0
playsound minecraft:block.anvil.use master @s ~ ~ ~ 1 1.95
clear @s knowledge_book
tag @s remove looking_for_movement
tag @s remove intro_in_progress
scoreboard players reset @s intro