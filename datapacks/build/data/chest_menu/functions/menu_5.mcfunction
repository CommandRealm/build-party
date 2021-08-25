execute store result score @s click_0 run clear @s barrier{echest:1,HideFlags:63}
execute if entity @s[scores={click_0=1..}] run function chest_menu:start
execute store result score @s click_0 run clear @s netherite_ingot{echest:1,HideFlags:63}
execute if entity @s[scores={click_0=1..}] run function chest_menu:start_stats
execute store result score @s click_0 run clear @s diamond{echest:1,HideFlags:63}
execute if entity @s[scores={click_0=1..}] run function chest_menu:start_stats
execute store result score @s click_0 run clear @s writable_book{echest:1,HideFlags:63}
execute if entity @s[scores={click_0=1..}] run function chest_menu:start_stats
execute store result score @s click_0 run clear @s written_book{echest:1,HideFlags:63}
execute if entity @s[scores={click_0=1..}] run function chest_menu:start_stats
execute store result score @s click_0 run clear @s purple_dye{echest:1,HideFlags:63}
execute if entity @s[scores={click_0=1..}] run function chest_menu:start_stats
execute store result score @s click_0 run clear @s red_dye{echest:1,HideFlags:63}
execute if entity @s[scores={click_0=1..}] run function chest_menu:start_stats