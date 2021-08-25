execute if score $game state matches 1 if entity @s[tag=!builder] run function game:no_click_o_book
execute if score $game state matches 0 run function game:no_click_o_book
execute if score $game state matches 1 if entity @s[tag=builder] run function game:click_o_book
scoreboard players set @s o_book 0
scoreboard players enable @s o_book