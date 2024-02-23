## The always running function of this game.
execute as @a[tag=!hungry] unless entity @s[tag=!playing,nbt={Inventory:[{tag:{vending_machine:1}}]}] run effect give @s saturation 2 0 true
scoreboard players add @a new_player 1
execute as @a[scores={leave=1..}] at @s run function general:leave
execute as @a[scores={new_player=1}] at @s run function general:new_player
execute if score $game state matches 1.. run function game:main
execute if score $game state matches 0 run function pregame:main
execute if entity @a[x=0,y=66,z=0,distance=..500] run function lobby:main
execute as @e[type=tnt] at @s run function general:kill_tnt
kill @e[type=tnt_minecart]
kill @e[type=wither]
execute as @a[scores={o_book=1..}] at @s run function game:check_o_book
kill @e[type=item,nbt={Item:{id:"minecraft:barrier"}}]
execute as @a[scores={sel_hat=1..16},tag=!builder] at @s unless entity @s[nbt={Inventory:[{Slot:103b,tag:{display:{Lore:['[{"text":"Hat","color":"blue","bold":true,"italic":false}]']}}}]}] run function cosmetic:equip_hat
execute if entity @a[scores={sel_hat=17}] run function cosmetic:head_bulge
execute if entity @a[scores={sel_hat=18}] run function cosmetic:rainbow_glass
##execute as @a[tag=n_suit] at @s unless entity @s[nbt={Inventory:[{Slot:100b,id:"minecraft:netherite_boots",tag:{suit:1}},{Slot:101b,id:"minecraft:netherite_leggings",tag:{suit:1}},{Slot:102b,id:"minecraft:netherite_chestplate",tag:{suit:1}}]}] run function cosmetic:equip_n_suit
advancement grant @a[advancements={game:custom/unlock_music=true,game:custom/unlock_hat=true,game:custom/unlock_sound=true,game:custom/unlock_prefix=true,completionist/completionist=false}] only minecraft:completionist/completionist