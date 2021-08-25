execute store result score @s click_0 run clear @s barrier{echest:1,HideFlags:63}
execute if entity @s[scores={click_0=1..}] run function chest_menu:start
execute store result score @s click_0 run clear @s netherite_helmet{echest:1,HideFlags:63}
execute if entity @s[scores={click_0=1..}] run function chest_menu:start_hats
execute store result score @s click_0 run clear @s music_disc_wait{echest:1,HideFlags:63}
execute if entity @s[scores={click_0=1..}] run function chest_menu:start_music
execute store result score @s click_0 run clear @s gold_nugget{echest:1,HideFlags:63}
execute if entity @s[scores={click_0=1..}] run function chest_menu:start_advancements