execute if score $number team matches 1 run function game:battle/check_players
execute if score $number team matches 2.. run function game:battle/teams/check_players
scoreboard players remove $time game_timer 1
execute if score $game state matches 1 if entity @a[tag=playing,x=-1000,y=66,z=0,distance=..200,tag=!builder] run function game:battle/voting_time
execute if score $game state matches 1 unless entity @a[tag=playing,x=-1000,y=66,z=0,distance=..200,tag=!builder] run function game:battle/building_time
execute if score $game state matches 2 run function game:battle/rating_time
execute unless entity @a[tag=delay_dnb_map] run function game:restrict_edges
execute as @a[tag=builder,gamemode=creative] at @s at @s[y=160,distance=..60] run function game:return_to_plot
execute as @a[tag=builder,gamemode=creative] at @s at @s[y=4,distance=..60] run function game:return_to_plot
execute if score $number nine_block matches 0 as @a[tag=builder,gamemode=creative] unless entity @s[nbt={Inventory:[{Slot:8b,id:"minecraft:written_book",tag:{display:{Name:'{"bold":true,"italic":false,"color":"aqua","text":"Options Book"}'}}}]}] run function game:get_o_book


execute as @a[team=spectator] at @s unless entity @a[tag=playing,distance=..25] run tp @s @r[tag=playing]
execute as @a[gamemode=spectator] at @s if entity @s[y=44,distance=..20] run function game:battle/spectator_leave
execute as @a[gamemode=spectator] at @s if entity @s[y=130,distance=..20] run function game:battle/spectator_leave