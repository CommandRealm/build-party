##Called if this character has already been revealed


data merge storage minecraft:underscores {Isolation_Check:[]}

scoreboard players set $found_character game 0

##Moving theme character to isolation
execute if score $rand random matches 0 run data modify storage minecraft:underscores Isolation_Check append from storage minecraft:underscores Current_Letters[0]
execute if score $rand random matches 1 run data modify storage minecraft:underscores Isolation_Check append from storage minecraft:underscores Current_Letters[1]
execute if score $rand random matches 2 run data modify storage minecraft:underscores Isolation_Check append from storage minecraft:underscores Current_Letters[2]
execute if score $rand random matches 3 run data modify storage minecraft:underscores Isolation_Check append from storage minecraft:underscores Current_Letters[3]
execute if score $rand random matches 4 run data modify storage minecraft:underscores Isolation_Check append from storage minecraft:underscores Current_Letters[4]
execute if score $rand random matches 5 run data modify storage minecraft:underscores Isolation_Check append from storage minecraft:underscores Current_Letters[5]
execute if score $rand random matches 6 run data modify storage minecraft:underscores Isolation_Check append from storage minecraft:underscores Current_Letters[6]
execute if score $rand random matches 7 run data modify storage minecraft:underscores Isolation_Check append from storage minecraft:underscores Current_Letters[7]
execute if score $rand random matches 8 run data modify storage minecraft:underscores Isolation_Check append from storage minecraft:underscores Current_Letters[8]
execute if score $rand random matches 9 run data modify storage minecraft:underscores Isolation_Check append from storage minecraft:underscores Current_Letters[9]
execute if score $rand random matches 10 run data modify storage minecraft:underscores Isolation_Check append from storage minecraft:underscores Current_Letters[10]
execute if score $rand random matches 11 run data modify storage minecraft:underscores Isolation_Check append from storage minecraft:underscores Current_Letters[11]
execute if score $rand random matches 12 run data modify storage minecraft:underscores Isolation_Check append from storage minecraft:underscores Current_Letters[12]
execute if score $rand random matches 13 run data modify storage minecraft:underscores Isolation_Check append from storage minecraft:underscores Current_Letters[13]
execute if score $rand random matches 14 run data modify storage minecraft:underscores Isolation_Check append from storage minecraft:underscores Current_Letters[14]
execute if score $rand random matches 15 run data modify storage minecraft:underscores Isolation_Check append from storage minecraft:underscores Current_Letters[15]
execute if score $rand random matches 16 run data modify storage minecraft:underscores Isolation_Check append from storage minecraft:underscores Current_Letters[16]
execute if score $rand random matches 17 run data modify storage minecraft:underscores Isolation_Check append from storage minecraft:underscores Current_Letters[17]
execute if score $rand random matches 18 run data modify storage minecraft:underscores Isolation_Check append from storage minecraft:underscores Current_Letters[18]
execute if score $rand random matches 19 run data modify storage minecraft:underscores Isolation_Check append from storage minecraft:underscores Current_Letters[19]
execute if score $rand random matches 20 run data modify storage minecraft:underscores Isolation_Check append from storage minecraft:underscores Current_Letters[20]
execute if score $rand random matches 21 run data modify storage minecraft:underscores Isolation_Check append from storage minecraft:underscores Current_Letters[21]
execute if score $rand random matches 22 run data modify storage minecraft:underscores Isolation_Check append from storage minecraft:underscores Current_Letters[22]
execute if score $rand random matches 23 run data modify storage minecraft:underscores Isolation_Check append from storage minecraft:underscores Current_Letters[23]
execute if score $rand random matches 24 run data modify storage minecraft:underscores Isolation_Check append from storage minecraft:underscores Current_Letters[24]
execute if score $rand random matches 25 run data modify storage minecraft:underscores Isolation_Check append from storage minecraft:underscores Current_Letters[25]
execute if score $rand random matches 26 run data modify storage minecraft:underscores Isolation_Check append from storage minecraft:underscores Current_Letters[26]
execute if score $rand random matches 27 run data modify storage minecraft:underscores Isolation_Check append from storage minecraft:underscores Current_Letters[27]
execute if score $rand random matches 28 run data modify storage minecraft:underscores Isolation_Check append from storage minecraft:underscores Current_Letters[28]
execute if score $rand random matches 29 run data modify storage minecraft:underscores Isolation_Check append from storage minecraft:underscores Current_Letters[29]
execute if score $rand random matches 20 run data modify storage minecraft:underscores Isolation_Check append from storage minecraft:underscores Current_Letters[30]
execute if score $rand random matches 31 run data modify storage minecraft:underscores Isolation_Check append from storage minecraft:underscores Current_Letters[31]
execute if score $rand random matches 32 run data modify storage minecraft:underscores Isolation_Check append from storage minecraft:underscores Current_Letters[32]
execute if score $rand random matches 33 run data modify storage minecraft:underscores Isolation_Check append from storage minecraft:underscores Current_Letters[33]
execute if score $rand random matches 34 run data modify storage minecraft:underscores Isolation_Check append from storage minecraft:underscores Current_Letters[34]
execute if score $rand random matches 35 run data modify storage minecraft:underscores Isolation_Check append from storage minecraft:underscores Current_Letters[35]
execute if score $rand random matches 36 run data modify storage minecraft:underscores Isolation_Check append from storage minecraft:underscores Current_Letters[36]
execute if score $rand random matches 37 run data modify storage minecraft:underscores Isolation_Check append from storage minecraft:underscores Current_Letters[37]
execute if score $rand random matches 38 run data modify storage minecraft:underscores Isolation_Check append from storage minecraft:underscores Current_Letters[38]
execute if score $rand random matches 39 run data modify storage minecraft:underscores Isolation_Check append from storage minecraft:underscores Current_Letters[39]

execute unless data storage minecraft:underscores {Isolation_Check:["_"]} run scoreboard players set $found_character game -1


execute if score $found_character game matches -1 run function game:guess/reveal/invalid_character