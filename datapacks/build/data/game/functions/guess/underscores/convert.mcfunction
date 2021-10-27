##Called to convert the theme into underscores.

data merge storage minecraft:underscores {Current_Letters:[],Generation_Copy:[],Isolation:[""]}
data modify storage minecraft:underscores Generation_Copy set from storage minecraft:theme Theme

function game:guess/underscores/convert_character

##Storing number of characters.
execute store result score $characters_in_theme game if data storage minecraft:theme Theme[]

##Time between letters.
scoreboard players operation $time_between_letters game = $time set_timer

##Removing ten seconds
scoreboard players remove $time_between_letters game 200

##How many letters should be revealed
execute if score $characters_in_theme game matches ..5 run scoreboard players set $characters_to_reveal game 2
execute if score $characters_in_theme game matches 6..9 run scoreboard players set $characters_to_reveal game 3
execute if score $characters_in_theme game matches 10..15 run scoreboard players set $characters_to_reveal game 4
execute if score $characters_in_theme game matches 16.. run scoreboard players set $characters_to_reveal game 5

##Dividing by l
scoreboard players operation $time_between_letters game /= $characters_to_reveal game

##Copying it to time_till_letters
scoreboard players operation $time_till_letter game = $time_between_letters game