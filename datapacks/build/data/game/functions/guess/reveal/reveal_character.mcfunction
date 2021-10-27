##called to reveal a character.

##Getting index number for the character we want to reveal.
scoreboard players operation $mod random = $characters_in_theme game
function random:random

##Checking to make sure it's not a hyphen or space.
function game:guess/reveal/check_character

##Moving the character.
execute if score $rand random matches 0 run data modify storage minecraft:underscores Current_Letters[0] set from storage minecraft:theme Theme[0]
execute if score $rand random matches 1 run data modify storage minecraft:underscores Current_Letters[1] set from storage minecraft:theme Theme[1]
execute if score $rand random matches 2 run data modify storage minecraft:underscores Current_Letters[2] set from storage minecraft:theme Theme[2]
execute if score $rand random matches 3 run data modify storage minecraft:underscores Current_Letters[3] set from storage minecraft:theme Theme[3]
execute if score $rand random matches 4 run data modify storage minecraft:underscores Current_Letters[4] set from storage minecraft:theme Theme[4]
execute if score $rand random matches 5 run data modify storage minecraft:underscores Current_Letters[5] set from storage minecraft:theme Theme[5]
execute if score $rand random matches 6 run data modify storage minecraft:underscores Current_Letters[6] set from storage minecraft:theme Theme[6]
execute if score $rand random matches 7 run data modify storage minecraft:underscores Current_Letters[7] set from storage minecraft:theme Theme[7]
execute if score $rand random matches 8 run data modify storage minecraft:underscores Current_Letters[8] set from storage minecraft:theme Theme[8]
execute if score $rand random matches 9 run data modify storage minecraft:underscores Current_Letters[9] set from storage minecraft:theme Theme[9]
execute if score $rand random matches 10 run data modify storage minecraft:underscores Current_Letters[10] set from storage minecraft:theme Theme[10]
execute if score $rand random matches 11 run data modify storage minecraft:underscores Current_Letters[11] set from storage minecraft:theme Theme[11]
execute if score $rand random matches 12 run data modify storage minecraft:underscores Current_Letters[12] set from storage minecraft:theme Theme[12]
execute if score $rand random matches 13 run data modify storage minecraft:underscores Current_Letters[13] set from storage minecraft:theme Theme[13]
execute if score $rand random matches 14 run data modify storage minecraft:underscores Current_Letters[14] set from storage minecraft:theme Theme[14]
execute if score $rand random matches 15 run data modify storage minecraft:underscores Current_Letters[15] set from storage minecraft:theme Theme[15]
execute if score $rand random matches 16 run data modify storage minecraft:underscores Current_Letters[16] set from storage minecraft:theme Theme[16]
execute if score $rand random matches 17 run data modify storage minecraft:underscores Current_Letters[17] set from storage minecraft:theme Theme[17]
execute if score $rand random matches 18 run data modify storage minecraft:underscores Current_Letters[18] set from storage minecraft:theme Theme[18]
execute if score $rand random matches 19 run data modify storage minecraft:underscores Current_Letters[19] set from storage minecraft:theme Theme[19]
execute if score $rand random matches 20 run data modify storage minecraft:underscores Current_Letters[20] set from storage minecraft:theme Theme[20]
execute if score $rand random matches 21 run data modify storage minecraft:underscores Current_Letters[21] set from storage minecraft:theme Theme[21]
execute if score $rand random matches 22 run data modify storage minecraft:underscores Current_Letters[22] set from storage minecraft:theme Theme[22]
execute if score $rand random matches 23 run data modify storage minecraft:underscores Current_Letters[23] set from storage minecraft:theme Theme[23]
execute if score $rand random matches 24 run data modify storage minecraft:underscores Current_Letters[24] set from storage minecraft:theme Theme[24]
execute if score $rand random matches 25 run data modify storage minecraft:underscores Current_Letters[25] set from storage minecraft:theme Theme[25]
execute if score $rand random matches 26 run data modify storage minecraft:underscores Current_Letters[26] set from storage minecraft:theme Theme[26]
execute if score $rand random matches 27 run data modify storage minecraft:underscores Current_Letters[27] set from storage minecraft:theme Theme[27]
execute if score $rand random matches 28 run data modify storage minecraft:underscores Current_Letters[28] set from storage minecraft:theme Theme[28]
execute if score $rand random matches 29 run data modify storage minecraft:underscores Current_Letters[29] set from storage minecraft:theme Theme[29]
execute if score $rand random matches 30 run data modify storage minecraft:underscores Current_Letters[30] set from storage minecraft:theme Theme[30]
execute if score $rand random matches 31 run data modify storage minecraft:underscores Current_Letters[31] set from storage minecraft:theme Theme[31]
execute if score $rand random matches 32 run data modify storage minecraft:underscores Current_Letters[32] set from storage minecraft:theme Theme[32]
execute if score $rand random matches 33 run data modify storage minecraft:underscores Current_Letters[33] set from storage minecraft:theme Theme[33]
execute if score $rand random matches 34 run data modify storage minecraft:underscores Current_Letters[34] set from storage minecraft:theme Theme[34]
execute if score $rand random matches 35 run data modify storage minecraft:underscores Current_Letters[35] set from storage minecraft:theme Theme[35]
execute if score $rand random matches 36 run data modify storage minecraft:underscores Current_Letters[36] set from storage minecraft:theme Theme[36]
execute if score $rand random matches 37 run data modify storage minecraft:underscores Current_Letters[37] set from storage minecraft:theme Theme[37]
execute if score $rand random matches 38 run data modify storage minecraft:underscores Current_Letters[38] set from storage minecraft:theme Theme[38]
execute if score $rand random matches 39 run data modify storage minecraft:underscores Current_Letters[39] set from storage minecraft:theme Theme[39]

scoreboard players operation $time_till_letter game = $time_between_letters game

##Sound
execute as @a[x=0,y=66,z=0,distance=100..] at @s run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 1 0