scoreboard players set $time alternate_second 20
execute as @a[scores={ready=1}] at @s run playsound minecraft:entity.chicken.egg master @s ~ ~ ~ 1 0
execute as @a[scores={ready=0}] at @s run playsound minecraft:block.anvil.land master @s ~ ~ ~ 1 2