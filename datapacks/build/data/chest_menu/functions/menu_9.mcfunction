execute store result score @s click_0 run clear @s barrier{echest:1,HideFlags:63}
execute if entity @s[scores={click_0=1..}] run function chest_menu:start


execute store result score @s click_0 run clear @s player_head{echest:1,HideFlags:63}
execute if entity @s[scores={click_0=1..}] run function chest_menu:toggle_letters
execute store result score @s click_0 run clear @s music_disc_11{echest:1,HideFlags:63}
execute if entity @s[scores={click_0=1..}] run function chest_menu:toggle_music_option
execute store result score @s click_0 run clear @s music_disc_stal{echest:1,HideFlags:63}
execute if entity @s[scores={click_0=1..}] run function chest_menu:toggle_music_option