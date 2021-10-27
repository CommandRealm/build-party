scoreboard players reset @s open_e_chest
function chest_menu:clear
scoreboard players set @s menu 9


item replace entity @s[tag=!no_music] enderchest.12 with music_disc_stal{echest: 1, HideFlags: 63, display: {Name: '[{"text":"Music","color":"dark_green","italic":false},{"text":": ","color":"gray"},{"text":"Enabled","color":"green"}]'}}
item replace entity @s[tag=no_music] enderchest.12 with music_disc_11{echest: 1, HideFlags: 63, display: {Name: '[{"text":"Music","color":"dark_green","italic":false},{"text":": ","color":"gray"},{"text":"Disabled","color":"red"}]'}}

item replace entity @s[tag=!no_letters] enderchest.14 with player_head{echest: 1, HideFlags: 63, display: {Name: '[{"text":"Show ","color":"gray","italic":false},{"text":"Letters ","color":"yellow"},{"text":"While ","color":"gray"},{"text":"Guessing","color":"gold"},{"text":": ","color":"gray"},{"text":"Enabled","color":"green"}]'},SkullOwner:{Id:[I;-387904571,-1186053256,-1521701775,-1503461687],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTY3ZDgxM2FlN2ZmZTViZTk1MWE0ZjQxZjJhYTYxOWE1ZTM4OTRlODVlYTVkNDk4NmY4NDk0OWM2M2Q3NjcyZSJ9fX0="}]}}}
item replace entity @s[tag=no_letters] enderchest.14 with player_head{echest: 1, HideFlags: 63, display: {Name: '[{"text":"Show ","color":"gray","italic":false},{"text":"Letters ","color":"yellow"},{"text":"While ","color":"gray"},{"text":"Guessing","color":"gold"},{"text":": ","color":"gray"},{"text":"Disabled","color":"red"}]'},SkullOwner:{Id:[I;1838871765,1342065991,-1133315475,-1204339625],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNWRiNTMyYjVjY2VkNDZiNGI1MzVlY2UxNmVjZWQ3YmJjNWNhYzU1NTk0ZDYxZThiOGY4ZWFjNDI5OWM5ZmMifX19"}]}}}

item replace entity @s enderchest.18 with barrier{echest: 1, HideFlags: 63, display: {Name: '{"text":"Back","color":"red","italic":false}'}}

playsound minecraft:ui.button.click master @s[scores={click_0=1..}] ~ ~ ~ 1000000 1
playsound minecraft:ui.button.click master @s[scores={click_1=1..}] ~ ~ ~ 1000000 1
playsound minecraft:ui.button.click master @s[scores={click_2=1..}] ~ ~ ~ 1000000 1
playsound minecraft:ui.button.click master @s[scores={click_3=1..}] ~ ~ ~ 1000000 1
playsound minecraft:ui.button.click master @s[scores={click_4=1..}] ~ ~ ~ 1000000 1
playsound minecraft:ui.button.click master @s[scores={click_5=1..}] ~ ~ ~ 1000000 1
playsound minecraft:ui.button.click master @s[scores={click_6=1..}] ~ ~ ~ 1000000 1
playsound minecraft:ui.button.click master @s[scores={click_7=1..}] ~ ~ ~ 1000000 1
playsound minecraft:ui.button.click master @s[scores={click_8=1..}] ~ ~ ~ 1000000 1
playsound minecraft:ui.button.click master @s[scores={click_9=1..}] ~ ~ ~ 1000000 1
playsound minecraft:ui.button.click master @s[scores={click_10=1..}] ~ ~ ~ 1000000 1
playsound minecraft:ui.button.click master @s[scores={click_11=1..}] ~ ~ ~ 1000000 1
playsound minecraft:ui.button.click master @s[scores={click_12=1..}] ~ ~ ~ 1000000 1
scoreboard players reset @s click_0
scoreboard players reset @s click_1
scoreboard players reset @s click_2
scoreboard players reset @s click_3
scoreboard players reset @s click_4
scoreboard players reset @s click_5
scoreboard players reset @s click_6
scoreboard players reset @s click_7
scoreboard players reset @s click_8
scoreboard players reset @s click_9
scoreboard players reset @s click_10
scoreboard players reset @s click_11
scoreboard players reset @s click_12