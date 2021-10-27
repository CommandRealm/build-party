execute store result score @s click_0 run clear @s book{echest:1,HideFlags:63}
execute if entity @s[scores={click_0=1..}] run function chest_menu:click_titles
execute store result score @s click_0 run clear @s written_book{echest:1,HideFlags:63}
execute if entity @s[scores={click_0=1..}] run function chest_menu:start_titles
execute store result score @s click_0 run clear @s barrier{echest:1,HideFlags:63}
execute if entity @s[scores={click_0=1..}] run function chest_menu:start