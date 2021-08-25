##scoreboard players add @a[scores={hat=18}] player_hat_a 1
##execute as @a[scores={hat=18,player_hat_a=4}] at @s run loot replace entity @s armor.head loot minecraft:head_hat
##scoreboard players set @a[scores={hat=18}] player_hat_a 0
kill @e[type=item,nbt={Item:{tag:{rainbow_hat:1}}}]
execute as @a[scores={hat=18}] at @s unless entity @s[scores={rainbow_hat=0}] run clear @s red_stained_glass
execute as @a[scores={hat=18}] at @s unless entity @s[scores={rainbow_hat=2}] run clear @s orange_stained_glass
execute as @a[scores={hat=18}] at @s unless entity @s[scores={rainbow_hat=4}] run clear @s yellow_stained_glass
execute as @a[scores={hat=18}] at @s unless entity @s[scores={rainbow_hat=6}] run clear @s lime_stained_glass
execute as @a[scores={hat=18}] at @s unless entity @s[scores={rainbow_hat=8}] run clear @s light_blue_stained_glass
execute as @a[scores={hat=18}] at @s unless entity @s[scores={rainbow_hat=10}] run clear @s blue_stained_glass
execute as @a[scores={hat=18}] at @s unless entity @s[scores={rainbow_hat=12}] run clear @s magenta_stained_glass
execute as @a[scores={hat=18}] at @s unless entity @s[scores={rainbow_hat=14}] run clear @s purple_stained_glass

scoreboard players add @a[scores={hat=18}] rainbow_hat 1
replaceitem entity @a[scores={hat=18,rainbow_hat=0}] armor.head red_stained_glass{rainbow_hat:1,display:{Lore:['[{"text":"Hat","color":"blue","bold":true,"italic":false}]'],Name:'{"text":"Rainbow","color":"#ff000c","italic":false}'}}
replaceitem entity @a[scores={hat=18,rainbow_hat=2}] armor.head orange_stained_glass{rainbow_hat:1,display:{Lore:['[{"text":"Hat","color":"blue","bold":true,"italic":false}]'],Name:'{"text":"Rainbow","color":"#ff000c","italic":false}'}}
replaceitem entity @a[scores={hat=18,rainbow_hat=4}] armor.head yellow_stained_glass{rainbow_hat:1,display:{Lore:['[{"text":"Hat","color":"blue","bold":true,"italic":false}]'],Name:'{"text":"Rainbow","color":"#ff000c","italic":false}'}}
replaceitem entity @a[scores={hat=18,rainbow_hat=6}] armor.head lime_stained_glass{rainbow_hat:1,display:{Lore:['[{"text":"Hat","color":"blue","bold":true,"italic":false}]'],Name:'{"text":"Rainbow","color":"#ff000c","italic":false}'}}
replaceitem entity @a[scores={hat=18,rainbow_hat=8}] armor.head light_blue_stained_glass{rainbow_hat:1,display:{Lore:['[{"text":"Hat","color":"blue","bold":true,"italic":false}]'],Name:'{"text":"Rainbow","color":"#ff000c","italic":false}'}}
replaceitem entity @a[scores={hat=18,rainbow_hat=10}] armor.head blue_stained_glass{rainbow_hat:1,display:{Lore:['[{"text":"Hat","color":"blue","bold":true,"italic":false}]'],Name:'{"text":"Rainbow","color":"#ff000c","italic":false}'}}
replaceitem entity @a[scores={hat=18,rainbow_hat=12}] armor.head magenta_stained_glass{rainbow_hat:1,display:{Lore:['[{"text":"Hat","color":"blue","bold":true,"italic":false}]'],Name:'{"text":"Rainbow","color":"#ff000c","italic":false}'}}
replaceitem entity @a[scores={hat=18,rainbow_hat=14}] armor.head purple_stained_glass{rainbow_hat:1,display:{Lore:['[{"text":"Hat","color":"blue","bold":true,"italic":false}]'],Name:'{"text":"Rainbow","color":"#ff000c","italic":false}'}}
scoreboard players set @a[scores={hat=18,rainbow_hat=16}] rainbow_hat 0