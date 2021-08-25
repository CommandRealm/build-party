title @a[tag=playing,tag=!show_build,scores={final_rate=0}] actionbar {"text":"You haven't rated this build yet!","color":"red"}
title @a[tag=playing,tag=!show_build,scores={final_rate=1}] actionbar {"text":"You gave this build a: 1","color":"dark_gray"}
title @a[tag=playing,tag=!show_build,scores={final_rate=2}] actionbar {"text":"You gave this build a: 2","color":"dark_red"}
title @a[tag=playing,tag=!show_build,scores={final_rate=3}] actionbar {"text":"You gave this build a: 3","color":"red"}
title @a[tag=playing,tag=!show_build,scores={final_rate=4}] actionbar {"text":"You gave this build a: 4","color":"gold"}
title @a[tag=playing,tag=!show_build,scores={final_rate=5}] actionbar {"text":"You gave this build a: 5","color":"yellow"}
title @a[tag=playing,tag=!show_build,scores={final_rate=6}] actionbar {"text":"You gave this build a: 6","color":"green"}
title @a[tag=playing,tag=!show_build,scores={final_rate=7}] actionbar {"text":"You gave this build a: 7","color":"aqua"}
title @a[tag=playing,tag=!show_build,scores={final_rate=8}] actionbar {"text":"You gave this build a: 8","color":"dark_aqua"}
title @a[tag=playing,tag=!show_build,scores={final_rate=9}] actionbar {"text":"You gave this build a: 9","color":"blue"}
title @a[tag=playing,tag=!show_build,scores={final_rate=10}] actionbar {"text":"You gave this build a: 10","color":"dark_blue"}
title @a[tag=playing,tag=show_build] actionbar {"text":"Waiting for others to rate your build . . .","color":"yellow"}
execute as @a[scores={rate=1..}] at @s run function game:battle/check_rating
execute if score $time game_timer matches 0 run function game:battle/rate_over
execute store result bossbar minecraft:timer value run scoreboard players get $time game_timer

execute as @a[gamemode=spectator,tag=!show_build] at @s if entity @a[tag=show_build,distance=..200] at @e[type=area_effect_cloud,sort=nearest,limit=1,tag=build_being_rated] if entity @s[distance=35..] run function game:battle/spectator_leave
execute as @a[gamemode=spectator,tag=show_build] at @s if entity @a[tag=!show_build,distance=..200] at @e[type=area_effect_cloud,sort=nearest,limit=1,tag=build_being_rated] if entity @s[distance=35..] run function game:battle/spectator_leave