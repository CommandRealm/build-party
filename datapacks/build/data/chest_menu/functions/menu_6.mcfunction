execute store result score @s click_0 run clear @s barrier{echest:1,HideFlags:63}
execute if entity @s[scores={click_0=1..}] run function chest_menu:start
execute store result score @s click_0 run clear @s player_head{echest:1,HideFlags:63}
execute if entity @s[scores={click_0=1..}] run function chest_menu:start_credits
execute store result score @s click_0 run clear @s armor_stand{echest:1,HideFlags:63}
execute if entity @s[scores={click_0=1..}] run function chest_menu:start_credits
execute store result score @s click_0 run clear @s book{echest:1,HideFlags:63}
execute if entity @s[scores={click_0=1..}] run function chest_menu:view_testers
