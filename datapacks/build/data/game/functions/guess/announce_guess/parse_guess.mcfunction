# called to parse guess

execute store result score $calculate calculate run data get storage minecraft:guess full_guess

# Only checks for 0 to 25 characters, 26+ will throw an error
execute if score $calculate calculate matches 176 run data modify storage minecraft:guess announce_guess set string storage minecraft:guess full_guess 0 1
execute if score $calculate calculate matches 177 run data modify storage minecraft:guess announce_guess set string storage minecraft:guess full_guess 0 2
execute if score $calculate calculate matches 178 run data modify storage minecraft:guess announce_guess set string storage minecraft:guess full_guess 0 3
execute if score $calculate calculate matches 179 run data modify storage minecraft:guess announce_guess set string storage minecraft:guess full_guess 0 4
execute if score $calculate calculate matches 180 run data modify storage minecraft:guess announce_guess set string storage minecraft:guess full_guess 0 5
execute if score $calculate calculate matches 181 run data modify storage minecraft:guess announce_guess set string storage minecraft:guess full_guess 0 6
execute if score $calculate calculate matches 182 run data modify storage minecraft:guess announce_guess set string storage minecraft:guess full_guess 0 7
execute if score $calculate calculate matches 183 run data modify storage minecraft:guess announce_guess set string storage minecraft:guess full_guess 0 8
execute if score $calculate calculate matches 184 run data modify storage minecraft:guess announce_guess set string storage minecraft:guess full_guess 0 9
execute if score $calculate calculate matches 185 run data modify storage minecraft:guess announce_guess set string storage minecraft:guess full_guess 0 10
execute if score $calculate calculate matches 186 run data modify storage minecraft:guess announce_guess set string storage minecraft:guess full_guess 0 11
execute if score $calculate calculate matches 187 run data modify storage minecraft:guess announce_guess set string storage minecraft:guess full_guess 0 12
execute if score $calculate calculate matches 188 run data modify storage minecraft:guess announce_guess set string storage minecraft:guess full_guess 0 13
execute if score $calculate calculate matches 189 run data modify storage minecraft:guess announce_guess set string storage minecraft:guess full_guess 0 14
execute if score $calculate calculate matches 190 run data modify storage minecraft:guess announce_guess set string storage minecraft:guess full_guess 0 15
execute if score $calculate calculate matches 191 run data modify storage minecraft:guess announce_guess set string storage minecraft:guess full_guess 0 16
execute if score $calculate calculate matches 192 run data modify storage minecraft:guess announce_guess set string storage minecraft:guess full_guess 0 17
execute if score $calculate calculate matches 193 run data modify storage minecraft:guess announce_guess set string storage minecraft:guess full_guess 0 18
execute if score $calculate calculate matches 194 run data modify storage minecraft:guess announce_guess set string storage minecraft:guess full_guess 0 19
execute if score $calculate calculate matches 195 run data modify storage minecraft:guess announce_guess set string storage minecraft:guess full_guess 0 20
execute if score $calculate calculate matches 196 run data modify storage minecraft:guess announce_guess set string storage minecraft:guess full_guess 0 21
execute if score $calculate calculate matches 197 run data modify storage minecraft:guess announce_guess set string storage minecraft:guess full_guess 0 22
execute if score $calculate calculate matches 198 run data modify storage minecraft:guess announce_guess set string storage minecraft:guess full_guess 0 23
execute if score $calculate calculate matches 199 run data modify storage minecraft:guess announce_guess set string storage minecraft:guess full_guess 0 24
execute if score $calculate calculate matches 200 run data modify storage minecraft:guess announce_guess set string storage minecraft:guess full_guess 0 25
execute if score $calculate calculate matches 176..200 run function game:guess/announce_guess/tellraw

# Too many characters or too few characters
execute unless score $calculate calculate matches 176..200 run data modify storage minecraft:guess announce_guess set value " "
execute unless score $calculate calculate matches 176..200 run playsound block.dispenser.fail master @s ~ ~ ~ 1 0.5
execute if score $calculate calculate matches ..175 run tellraw @s ["",{"text":"- ","color":"dark_gray"},{"text":"Your guess was too short!","color":"red"}]
execute if score $calculate calculate matches 201.. run tellraw @s ["",{"text":"- ","color":"dark_gray"},{"text":"Your guess was too long! Anything over 25 characters is simply superfluous!","color":"red"}]



