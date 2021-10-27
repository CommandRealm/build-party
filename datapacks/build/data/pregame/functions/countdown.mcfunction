scoreboard players remove $time startup_timer 1
scoreboard players operation $time fake_timer = $time startup_timer
scoreboard players operation $time fake_timer /= 20 number
scoreboard players add $time fake_timer 1
execute unless score $time startup_timer matches ..20 run title @a[tag=!building] title [{"score":{"objective":"fake_timer","name":"$time"},"color":"yellow","bold":true},{"text":" seconds","color":"gold"}]
execute if score $time startup_timer matches ..20 run title @a[tag=!building] title [{"score":{"objective":"fake_timer","name":"$time"},"color":"yellow","bold":true},{"text":" second","color":"gold"}]
title @a[tag=!building,scores={ready=1}] subtitle [{"text":"till the game begins . . .","color":"blue"},{"text":" (","color":"gray","bold":true},{"score":{"objective":"players_ready","name":"$number"},"color":"white"},{"text":"/","color":"gray","bold":true},{"score":{"objective":"players_on","name":"$number"},"color":"white"},{"text":")","color":"gray","bold":true}]
title @a[tag=!building,scores={ready=0}] subtitle {"text":"to join the game . . .","color":"dark_red"}
execute if score $time startup_timer matches 0 run function game:start
scoreboard players add @a[scores={ready=1}] playing 0
scoreboard players reset @a[scores={ready=0}] playing
scoreboard players remove $time alternate_second 1
execute if score $time alternate_second matches 0 run function pregame:play_sound