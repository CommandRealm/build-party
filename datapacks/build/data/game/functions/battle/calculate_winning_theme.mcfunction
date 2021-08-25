scoreboard players set @e[tag=v_option_1] theme_results 1
scoreboard players set @e[tag=v_option_2] theme_results 1
scoreboard players set @e[tag=v_option_3] theme_results 1
execute as @a[tag=playing,nbt={SelectedItemSlot:3}] run scoreboard players add @e[tag=v_option_1] theme_results 1
execute as @a[tag=playing,nbt={SelectedItemSlot:4}] run scoreboard players add @e[tag=v_option_2] theme_results 1
execute as @a[tag=playing,nbt={SelectedItemSlot:5}] run scoreboard players add @e[tag=v_option_3] theme_results 1
scoreboard players set $results theme_results -100
execute as @e[tag=v_option] at @s run scoreboard players operation $results theme_results > @s theme_results
execute as @e[tag=v_option] at @s run scoreboard players operation @s theme_results -= $results theme_results
scoreboard players set $check_tie theme_results 0
execute as @e[tag=v_option,scores={theme_results=0}] at @s run scoreboard players add $check_tie theme_results 1
execute if score $check_tie theme_results matches 1 run function game:battle/winning_vote
execute if score $check_tie theme_results matches 2.. run function game:battle/tied_vote
title @a[tag=playing] times 0 65 15
title @a[tag=playing] subtitle {"text":" "}
summon minecraft:firework_rocket -1000 66 -4 {FireworksItem:{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Flight:1b,Explosions:[{Type:0b,Colors:[I; 14602026]}]}}},LifeTime:24}
summon minecraft:firework_rocket -1004 66 0 {FireworksItem:{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Flight:1b,Explosions:[{Type:0b,Colors:[I; 14602026]}]}}},LifeTime:24}
summon minecraft:firework_rocket -1000 66 4 {FireworksItem:{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Flight:1b,Explosions:[{Type:0b,Colors:[I; 14602026]}]}}},LifeTime:24}
summon minecraft:firework_rocket -996 66 0 {FireworksItem:{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Flight:1b,Explosions:[{Type:0b,Colors:[I; 14602026]}]}}},LifeTime:24}
summon minecraft:firework_rocket -990 66 10 {FireworksItem:{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Flight:1b,Explosions:[{Type:0b,Colors:[I; 14602026]}]}}},LifeTime:24}
summon minecraft:firework_rocket -990 66 -10 {FireworksItem:{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Flight:1b,Explosions:[{Type:0b,Colors:[I; 14602026]}]}}},LifeTime:24}
summon minecraft:firework_rocket -1010 66 -10 {FireworksItem:{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Flight:1b,Explosions:[{Type:0b,Colors:[I; 14602026]}]}}},LifeTime:24}
summon minecraft:firework_rocket -1010 66 10 {FireworksItem:{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Flight:1b,Explosions:[{Type:0b,Colors:[I; 14602026]}]}}},LifeTime:24}
clear @a[tag=playing]
bossbar remove minecraft:timer
execute as @a[tag=playing] at @s run particle spit ~ ~1 ~ 1 1 1 0.5 50
gamemode spectator @a[tag=playing]