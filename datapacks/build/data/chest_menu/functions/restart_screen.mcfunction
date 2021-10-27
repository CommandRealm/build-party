kill @e[type=item,nbt={Item:{tag:{echest:1}}}]
execute if entity @s[scores={menu=0}] run function chest_menu:start
execute if entity @s[scores={menu=1}] run function chest_menu:start_sponsors
execute if entity @s[scores={menu=2}] run function chest_menu:start_cosmetics
execute if entity @s[scores={menu=3}] run function chest_menu:start_hats
execute if entity @s[scores={menu=4}] run function chest_menu:start_music
execute if entity @s[scores={menu=5}] run function chest_menu:start_stats
execute if entity @s[scores={menu=6}] run function chest_menu:start_credits
execute if entity @s[scores={menu=7}] run function chest_menu:start_advancements
execute if entity @s[scores={menu=8}] run function chest_menu:start_sounds
execute if entity @s[scores={menu=9}] run function chest_menu:start_personal_options
execute if entity @s[scores={menu=99}] run function chest_menu:start_titles