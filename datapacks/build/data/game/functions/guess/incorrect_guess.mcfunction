# called when we have an incorrect guess.
playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 0.75

# getting our guess
data modify storage minecraft:guess full_guess set from entity @s SelectedItem.tag.pages[0]



# 
execute if score $number announce_guesses matches 1 run function game:guess/announce_guess/parse_guess
