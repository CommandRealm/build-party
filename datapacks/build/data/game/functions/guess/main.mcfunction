title @a[tag=builder,tag=playing] actionbar [{"text":"Your theme is: ","color":"gold","bold":false},{"nbt":"Theme","storage":"minecraft:theme","interpret":true,"color":"yellow"},{"text":" >>> ","color":"gray","bold":false},{"nbt":"Current_Letters","storage":"minecraft:underscores","interpret":true,"color":"yellow"}]
execute as @a[x=0,y=0,z=0,distance=500..,tag=!builder] at @s unless entity @s[tag=playing,tag=no_letters] run title @s actionbar [{"nbt":"Current_Letters","storage":"minecraft:underscores","interpret":true,"color":"yellow"}]

execute as @a[tag=correct_guess] at @s run function game:guess/correct_guess
execute as @a[team=guessing,scores={book_delay=1}] at @s run function game:guess/replace_book
execute as @a[team=guessing,scores={book_delay=0}] at @s unless data entity @s {SelectedItemSlot:8} unless entity @s[nbt={SelectedItem:{tag:{pages:['                                                     Type in your guess! Make sure not to use any capitals in it. When you are happy with your answer, click "Done." Good luck!']}}}] run scoreboard players set @s book_delay 1
execute if score $time cooldown matches 0 unless entity @a[team=guessing] unless entity @a[tag=admin] run function game:guess/start_cooldown

function game:guess/restrict_edges
execute as @a[team=building] at @s at @s[y=160,distance=..60] run function game:return_to_plot
execute as @a[team=building] at @s at @s[y=4,distance=..60] run function game:return_to_plot
execute if score $time cooldown matches 0 run scoreboard players remove $time game_timer 1

scoreboard players remove $time update_bossbar 1
execute if score $time update_bossbar matches 0 run function game:update_bossbar
execute if score $time game_timer matches 0 run team join no_guess @a[team=guessing]
execute as @a[team=guessing,scores={drop_book=1..}] at @s run function game:guess/replace_book
execute at @e[tag=sponsor_marker,type=area_effect_cloud] positioned ~-2 ~-1 ~-2 as @p[tag=builder,dx=30,dy=60,dz=30] positioned ~2 ~1 ~2 unless entity @s[dx=23.0,dy=44,dz=23.0] run function game:guess/out_of_plot
execute as @e[type=enderman,x=-1000,y=66,z=0,distance=..500] at @s at @e[tag=sponsor_marker,type=area_effect_cloud,sort=nearest,limit=1] unless entity @s[dx=23.0,dy=44,dz=23.0] run function game:kill_enderman

scoreboard players set $number in_game 0
execute as @a[tag=playing] at @s run scoreboard players add $number in_game 1
execute if score $number in_game matches ..1 unless entity @a[tag=playing,tag=admin] run function end:no_players
execute as @a[gamemode=spectator] at @s at @e[type=area_effect_cloud,sort=nearest,limit=1,tag=sponsor_marker] positioned ~12 ~12 ~12 if entity @s[distance=35..] run function game:guess/spectator_leave
execute as @a[gamemode=adventure,team=guessing] at @s unless entity @s[y=73.5,distance=..1] run tp @s ~ 73.5 ~

##Counting down time to reveal a character.
scoreboard players remove $time_till_letter game 1
execute if score $time_till_letter game matches 0 run function game:guess/reveal/reveal_character

##If they don't haver a spyglass
execute as @a[gamemode=adventure,team=guessing] at @s unless entity @s[nbt={Inventory:[{Slot:8b,id:"minecraft:spyglass"}]}] run function game:guess/get_spyglass

##Counting down for 30 second timer (to see if they can change themes)
scoreboard players remove $30_sec game 1

##If someone wants to change their theme
scoreboard players enable @a[tag=playing,tag=builder] new_theme
execute as @a[tag=playing,tag=builder,scores={new_theme=1..}] at @s run function game:guess/new_theme/check