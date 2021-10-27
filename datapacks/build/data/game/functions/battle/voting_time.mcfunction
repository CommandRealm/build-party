tp @a[tag=playing,scores={choose_view=11}] -1000 66 10 
tp @a[tag=playing,scores={choose_view=10}] -1000 66 -10 
tp @a[tag=playing,scores={choose_view=9}] -1010 66 0 
tp @a[tag=playing,scores={choose_view=8}] -990 66 0 
tp @a[tag=playing,scores={choose_view=7}] -995 66 9 
tp @a[tag=playing,scores={choose_view=6}] -1005 66 -9 
tp @a[tag=playing,scores={choose_view=5}] -1005 66 9 
tp @a[tag=playing,scores={choose_view=4}] -995 66 -9 
tp @a[tag=playing,scores={choose_view=3}] -991 66 5 
tp @a[tag=playing,scores={choose_view=2}] -1009 66 -5 
tp @a[tag=playing,scores={choose_view=1}] -1009 66 5 
execute if score $time game_timer matches -1 run title @a[tag=playing] title [{"text":"The winner is","color":"blue"},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":". . ."}]
execute if score $time game_timer matches -2 run title @a[tag=playing] title [{"text":"The winner is","color":"blue"},{"text":" "},{"text":" "},{"text":" "},{"text":". . ."}]
execute if score $time game_timer matches -3 run title @a[tag=playing] title [{"text":"The winner is","color":"blue"},{"text":" "},{"text":" "},{"text":". . ."}]
execute if score $time game_timer matches -4 run title @a[tag=playing] title [{"text":"The winner is","color":"blue"},{"text":" "},{"text":". . ."}]
execute if score $time game_timer matches -5 run title @a[tag=playing] title [{"text":"The winner is","color":"blue"},{"text":". . ."}]
execute if score $time game_timer matches -6 run title @a[tag=playing] title [{"text":"The winner is","color":"blue"},{"text":"..."}]
execute if score $time game_timer matches -7 run title @a[tag=playing] title [{"text":"The winner is","color":"blue"},{"text":".."}]
execute if score $time game_timer matches -8 run title @a[tag=playing] title [{"text":"The winner is","color":"blue"},{"text":"."}]
execute if score $time game_timer matches -9 run title @a[tag=playing] title [{"text":"The winner is","color":"blue"},{"text":":"}]
execute if score $time game_timer matches -20 run title @a[tag=playing] subtitle {"nbt":"Theme","storage":"minecraft:theme","interpret":true,"color":"yellow"}
execute if score $time game_timer matches -20 as @a[tag=playing] at @s run playsound minecraft:entity.chicken.egg master @s ~ ~ ~ 1 0.8
execute if score $time game_timer matches -60 run effect give @a[tag=playing] blindness 10 255 true
execute if score $time game_timer matches -60 run function game:battle/start_building