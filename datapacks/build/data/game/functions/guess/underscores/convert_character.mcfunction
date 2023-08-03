##called to convert the next character.



##Resetting Isolation
data remove storage minecraft:underscores Isolation[0]

##Isolating the character
data modify storage minecraft:underscores Isolation append from storage minecraft:underscores Generation_Copy[0]

execute if data storage minecraft:underscores {Isolation:[" "]} run function game:guess/underscores/convert_visible
execute if data storage minecraft:underscores {Isolation:["-"]} run function game:guess/underscores/convert_visible
execute if data storage minecraft:underscores {Isolation:["."]} run function game:guess/underscores/convert_visible
# execute if data storage minecraft:underscores {Isolation:["1"]} run function game:guess/underscores/convert_visible
# execute if data storage minecraft:underscores {Isolation:["2"]} run function game:guess/underscores/convert_visible
# execute if data storage minecraft:underscores {Isolation:["3"]} run function game:guess/underscores/convert_visible
# execute if data storage minecraft:underscores {Isolation:["4"]} run function game:guess/underscores/convert_visible
# execute if data storage minecraft:underscores {Isolation:["5"]} run function game:guess/underscores/convert_visible
# execute if data storage minecraft:underscores {Isolation:["6"]} run function game:guess/underscores/convert_visible
# execute if data storage minecraft:underscores {Isolation:["7"]} run function game:guess/underscores/convert_visible
# execute if data storage minecraft:underscores {Isolation:["8"]} run function game:guess/underscores/convert_visible
# execute if data storage minecraft:underscores {Isolation:["9"]} run function game:guess/underscores/convert_visible
# execute if data storage minecraft:underscores {Isolation:["0"]} run function game:guess/underscores/convert_visible
execute unless entity @a[tag=found] run data modify storage minecraft:underscores Current_Letters append value "_" 

data remove storage minecraft:underscores Generation_Copy[0]

##removing tag
tag @a remove found

##Call again if necessary.
execute if data storage minecraft:underscores Generation_Copy[0] run function game:guess/underscores/convert_character