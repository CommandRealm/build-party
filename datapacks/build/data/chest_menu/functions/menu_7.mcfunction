execute store result score @s click_0 run clear @s barrier{echest:1,HideFlags:63}
execute if entity @s[scores={click_0=1..}] run function chest_menu:start_cosmetics
execute store result score @s click_0 run clear @s black_stained_glass_pane{echest:1,HideFlags:63}
execute if entity @s[scores={click_0=1..}] run function chest_menu:start_advancements

execute store result score @s click_0 run clear @s name_tag{echest:1,HideFlags:63}
execute if entity @s[scores={click_0=1..}] run function chest_menu:toggle_prefix
execute store result score @s click_0 run clear @s red_stained_glass{echest:1,HideFlags:63}
execute if entity @s[scores={click_0=1..}] run function chest_menu:toggle_hat
execute store result score @s click_0 run clear @s music_disc_pigstep{echest:1,HideFlags:63}
execute if entity @s[scores={click_0=1..}] run function chest_menu:toggle_music
execute store result score @s click_0 run clear @s netherite_chestplate{echest:1,HideFlags:63}
execute if entity @s[scores={click_0=1..}] run function chest_menu:toggle_suit
