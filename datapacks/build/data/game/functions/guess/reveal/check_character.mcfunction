##called to check the character to make sure it's not a hyphen or space.

##Removing tag and fixing score
scoreboard players set $found_character game 0


##clearing storage
data merge storage minecraft:underscores {Isolation:[]}

##Copying character from theme
execute if score $rand random matches 0 run data modify storage minecraft:underscores Isolation append from storage minecraft:theme Theme[0]
execute if score $rand random matches 1 run data modify storage minecraft:underscores Isolation append from storage minecraft:theme Theme[1]
execute if score $rand random matches 2 run data modify storage minecraft:underscores Isolation append from storage minecraft:theme Theme[2]
execute if score $rand random matches 3 run data modify storage minecraft:underscores Isolation append from storage minecraft:theme Theme[3]
execute if score $rand random matches 4 run data modify storage minecraft:underscores Isolation append from storage minecraft:theme Theme[4]
execute if score $rand random matches 5 run data modify storage minecraft:underscores Isolation append from storage minecraft:theme Theme[5]
execute if score $rand random matches 6 run data modify storage minecraft:underscores Isolation append from storage minecraft:theme Theme[6]
execute if score $rand random matches 7 run data modify storage minecraft:underscores Isolation append from storage minecraft:theme Theme[7]
execute if score $rand random matches 8 run data modify storage minecraft:underscores Isolation append from storage minecraft:theme Theme[8]
execute if score $rand random matches 9 run data modify storage minecraft:underscores Isolation append from storage minecraft:theme Theme[9]
execute if score $rand random matches 10 run data modify storage minecraft:underscores Isolation append from storage minecraft:theme Theme[10]
execute if score $rand random matches 11 run data modify storage minecraft:underscores Isolation append from storage minecraft:theme Theme[11]
execute if score $rand random matches 12 run data modify storage minecraft:underscores Isolation append from storage minecraft:theme Theme[12]
execute if score $rand random matches 13 run data modify storage minecraft:underscores Isolation append from storage minecraft:theme Theme[13]
execute if score $rand random matches 14 run data modify storage minecraft:underscores Isolation append from storage minecraft:theme Theme[14]
execute if score $rand random matches 15 run data modify storage minecraft:underscores Isolation append from storage minecraft:theme Theme[15]
execute if score $rand random matches 16 run data modify storage minecraft:underscores Isolation append from storage minecraft:theme Theme[16]
execute if score $rand random matches 17 run data modify storage minecraft:underscores Isolation append from storage minecraft:theme Theme[17]
execute if score $rand random matches 18 run data modify storage minecraft:underscores Isolation append from storage minecraft:theme Theme[18]
execute if score $rand random matches 19 run data modify storage minecraft:underscores Isolation append from storage minecraft:theme Theme[19]
execute if score $rand random matches 20 run data modify storage minecraft:underscores Isolation append from storage minecraft:theme Theme[20]
execute if score $rand random matches 21 run data modify storage minecraft:underscores Isolation append from storage minecraft:theme Theme[21]
execute if score $rand random matches 22 run data modify storage minecraft:underscores Isolation append from storage minecraft:theme Theme[22]
execute if score $rand random matches 23 run data modify storage minecraft:underscores Isolation append from storage minecraft:theme Theme[23]
execute if score $rand random matches 24 run data modify storage minecraft:underscores Isolation append from storage minecraft:theme Theme[24]
execute if score $rand random matches 25 run data modify storage minecraft:underscores Isolation append from storage minecraft:theme Theme[25]
execute if score $rand random matches 26 run data modify storage minecraft:underscores Isolation append from storage minecraft:theme Theme[26]
execute if score $rand random matches 27 run data modify storage minecraft:underscores Isolation append from storage minecraft:theme Theme[27]
execute if score $rand random matches 28 run data modify storage minecraft:underscores Isolation append from storage minecraft:theme Theme[28]
execute if score $rand random matches 29 run data modify storage minecraft:underscores Isolation append from storage minecraft:theme Theme[29]
execute if score $rand random matches 20 run data modify storage minecraft:underscores Isolation append from storage minecraft:theme Theme[30]
execute if score $rand random matches 31 run data modify storage minecraft:underscores Isolation append from storage minecraft:theme Theme[31]
execute if score $rand random matches 32 run data modify storage minecraft:underscores Isolation append from storage minecraft:theme Theme[32]
execute if score $rand random matches 33 run data modify storage minecraft:underscores Isolation append from storage minecraft:theme Theme[33]
execute if score $rand random matches 34 run data modify storage minecraft:underscores Isolation append from storage minecraft:theme Theme[34]
execute if score $rand random matches 35 run data modify storage minecraft:underscores Isolation append from storage minecraft:theme Theme[35]
execute if score $rand random matches 36 run data modify storage minecraft:underscores Isolation append from storage minecraft:theme Theme[36]
execute if score $rand random matches 37 run data modify storage minecraft:underscores Isolation append from storage minecraft:theme Theme[37]
execute if score $rand random matches 38 run data modify storage minecraft:underscores Isolation append from storage minecraft:theme Theme[38]
execute if score $rand random matches 39 run data modify storage minecraft:underscores Isolation append from storage minecraft:theme Theme[39]

##If the Isolation character is a space or hyphen, mark as invalid.
execute if data storage minecraft:underscores {Isolation:[" "]} run function game:guess/reveal/invalid_character
execute if data storage minecraft:underscores {Isolation:["-"]} run function game:guess/reveal/invalid_character
execute if data storage minecraft:underscores {Isolation:["."]} run function game:guess/reveal/invalid_character

##If we're good so far, check if it's already been used
execute if score $found_character game matches 0 run function game:guess/reveal/check_if_already_revealed

execute if score $found_character game matches -1 run function game:guess/reveal/check_character