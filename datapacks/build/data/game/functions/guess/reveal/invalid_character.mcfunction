##Called when we find an invalid characters.
scoreboard players add $rand random 1

scoreboard players set $found_character game -1

##If it goes to high, set it to zero.
execute if score $rand random = $characters_in_theme game run scoreboard players set $rand random 0