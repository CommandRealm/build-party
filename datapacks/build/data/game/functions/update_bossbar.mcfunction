execute store result bossbar timer value run scoreboard players get $time game_timer
scoreboard players operation $minute bossbar_time = $time game_timer
scoreboard players operation $minute bossbar_time /= $minute number
scoreboard players operation $calculate bossbar_time = $minute bossbar_time
scoreboard players operation $calculate bossbar_time *= $minute number
scoreboard players operation $second bossbar_time = $time game_timer
scoreboard players operation $second bossbar_time -= $calculate bossbar_time
scoreboard players operation $second bossbar_time /= 20 number
scoreboard players set $time update_bossbar 20
execute if score $second bossbar_time matches 10.. run bossbar set minecraft:timer name [{"text":"Build time remaining ","color":"blue"},{"text":"- ","color":"dark_aqua"},{"score":{"objective":"bossbar_time","name":"$minute"},"color":"aqua"},{"text":":","color":"dark_aqua"},{"score":{"objective":"bossbar_time","name":"$second"},"color":"aqua"}]
execute if score $second bossbar_time matches ..9 run bossbar set minecraft:timer name [{"text":"Build time remaining ","color":"blue"},{"text":"- ","color":"dark_aqua"},{"score":{"objective":"bossbar_time","name":"$minute"},"color":"aqua"},{"text":":","color":"dark_aqua"},{"text":"0","color":"aqua"},{"score":{"objective":"bossbar_time","name":"$second"},"color":"aqua"}]