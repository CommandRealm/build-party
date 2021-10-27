##scoreboard players add @a[scores={hat=18}] player_hat_a 1
##execute as @a[scores={hat=18,player_hat_a=4}] at @s run loot replace entity @s armor.head loot minecraft:head_hat
##scoreboard players set @a[scores={hat=18}] player_hat_a 0
kill @e[type=item,nbt={Item:{tag:{rainbow_hat:1}}}]
execute as @a[scores={hat=18}] at @s unless entity @s[scores={rainbow_hat=0}] run clear @s red_stained_glass{rainbow_hat:1}
execute as @a[scores={hat=18}] at @s unless entity @s[scores={rainbow_hat=2}] run clear @s orange_stained_glass{rainbow_hat:1}
execute as @a[scores={hat=18}] at @s unless entity @s[scores={rainbow_hat=4}] run clear @s yellow_stained_glass{rainbow_hat:1}
execute as @a[scores={hat=18}] at @s unless entity @s[scores={rainbow_hat=6}] run clear @s lime_stained_glass{rainbow_hat:1}
execute as @a[scores={hat=18}] at @s unless entity @s[scores={rainbow_hat=8}] run clear @s light_blue_stained_glass{rainbow_hat:1}
execute as @a[scores={hat=18}] at @s unless entity @s[scores={rainbow_hat=10}] run clear @s blue_stained_glass{rainbow_hat:1}
execute as @a[scores={hat=18}] at @s unless entity @s[scores={rainbow_hat=12}] run clear @s magenta_stained_glass{rainbow_hat:1}
execute as @a[scores={hat=18}] at @s unless entity @s[scores={rainbow_hat=14}] run clear @s purple_stained_glass{rainbow_hat:1}

scoreboard players add @a[scores={hat=18}] rainbow_hat 1
item replace entity @a[scores={hat=18,rainbow_hat=0}] armor.head with red_stained_glass{rainbow_hat: 1, display: {Lore: ['[{"text":"Hat","color":"blue","bold":true,"italic":false}]'], Name: '{"text":"Rainbow","color":"#ff000c","italic":false}'}}
item replace entity @a[scores={hat=18,rainbow_hat=2}] armor.head with orange_stained_glass{rainbow_hat: 1, display: {Lore: ['[{"text":"Hat","color":"blue","bold":true,"italic":false}]'], Name: '{"text":"Rainbow","color":"#ff000c","italic":false}'}}
item replace entity @a[scores={hat=18,rainbow_hat=4}] armor.head with yellow_stained_glass{rainbow_hat: 1, display: {Lore: ['[{"text":"Hat","color":"blue","bold":true,"italic":false}]'], Name: '{"text":"Rainbow","color":"#ff000c","italic":false}'}}
item replace entity @a[scores={hat=18,rainbow_hat=6}] armor.head with lime_stained_glass{rainbow_hat: 1, display: {Lore: ['[{"text":"Hat","color":"blue","bold":true,"italic":false}]'], Name: '{"text":"Rainbow","color":"#ff000c","italic":false}'}}
item replace entity @a[scores={hat=18,rainbow_hat=8}] armor.head with light_blue_stained_glass{rainbow_hat: 1, display: {Lore: ['[{"text":"Hat","color":"blue","bold":true,"italic":false}]'], Name: '{"text":"Rainbow","color":"#ff000c","italic":false}'}}
item replace entity @a[scores={hat=18,rainbow_hat=10}] armor.head with blue_stained_glass{rainbow_hat: 1, display: {Lore: ['[{"text":"Hat","color":"blue","bold":true,"italic":false}]'], Name: '{"text":"Rainbow","color":"#ff000c","italic":false}'}}
item replace entity @a[scores={hat=18,rainbow_hat=12}] armor.head with magenta_stained_glass{rainbow_hat: 1, display: {Lore: ['[{"text":"Hat","color":"blue","bold":true,"italic":false}]'], Name: '{"text":"Rainbow","color":"#ff000c","italic":false}'}}
item replace entity @a[scores={hat=18,rainbow_hat=14}] armor.head with purple_stained_glass{rainbow_hat: 1, display: {Lore: ['[{"text":"Hat","color":"blue","bold":true,"italic":false}]'], Name: '{"text":"Rainbow","color":"#ff000c","italic":false}'}}
scoreboard players set @a[scores={hat=18,rainbow_hat=16}] rainbow_hat 0