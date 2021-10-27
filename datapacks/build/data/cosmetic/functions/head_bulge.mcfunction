scoreboard players add @a[scores={hat=17}] player_hat_a 1
execute as @a[scores={hat=17,player_hat_a=4}] at @s run loot replace entity @s armor.head loot minecraft:head_hat
scoreboard players set @a[scores={hat=17,player_hat_a=8..}] player_hat_a 0
execute as @a[scores={hat=17,player_hat_a=0}] at @s run item replace entity @s armor.head with air
kill @e[type=item,nbt={Item:{id:"minecraft:player_head",tag:{hat:1b}}}]