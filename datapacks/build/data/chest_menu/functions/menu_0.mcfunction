execute store result score @s click_0 run clear @s map{echest:1,HideFlags:63}
execute if entity @s[scores={click_0=1..}] run function chest_menu:start_sponsors
execute store result score @s click_0 run clear @s golden_helmet{echest:1,HideFlags:63}
execute if entity @s[scores={click_0=1..}] run function chest_menu:start_cosmetics
execute store result score @s click_0 run clear @s nether_star{echest:1,HideFlags:63}
execute if entity @s[scores={click_0=1..}] run function chest_menu:start_stats
execute store result score @s click_0 run clear @s command_block{echest:1,HideFlags:63}
execute if entity @s[scores={click_0=1..}] run function chest_menu:start_credits
execute store result score @s click_0 run clear @s comparator{echest:1,HideFlags:63}
execute if entity @s[scores={click_0=1..}] run function chest_menu:start_personal_options
execute store result score @s click_0 run clear @s written_book{echest:1,HideFlags:63}
execute if entity @s[scores={click_0=1..}] run function chest_menu:start_titles