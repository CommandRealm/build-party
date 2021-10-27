effect give @a[tag=playing] blindness 1 255 true
gamemode adventure @a[tag=playing]
clear @a[tag=playing]
tag @a remove builder
fill -32 8 8 -32 1 8 redstone_block
bossbar remove timer
bossbar add timer {"text":"Voting time remaining","color":"blue","underlined":true}
bossbar set timer color red
bossbar set timer style progress
bossbar set minecraft:timer players @a[tag=playing]
bossbar set minecraft:timer max 300
bossbar set minecraft:timer value 300
scoreboard objectives remove choose_view
scoreboard objectives add choose_view dummy
scoreboard players add @a[tag=playing] choose_view 0
scoreboard players add @r[tag=playing,scores={choose_view=0}] choose_view 1
scoreboard players add @a[tag=playing,scores={choose_view=1..}] choose_view 1
scoreboard players add @r[tag=playing,scores={choose_view=0}] choose_view 1
scoreboard players add @a[tag=playing,scores={choose_view=1..}] choose_view 1
scoreboard players add @r[tag=playing,scores={choose_view=0}] choose_view 1
scoreboard players add @a[tag=playing,scores={choose_view=1..}] choose_view 1
scoreboard players add @r[tag=playing,scores={choose_view=0}] choose_view 1
scoreboard players add @a[tag=playing,scores={choose_view=1..}] choose_view 1
scoreboard players add @r[tag=playing,scores={choose_view=0}] choose_view 1
scoreboard players add @a[tag=playing,scores={choose_view=1..}] choose_view 1
scoreboard players add @r[tag=playing,scores={choose_view=0}] choose_view 1
scoreboard players add @a[tag=playing,scores={choose_view=1..}] choose_view 1
scoreboard players add @r[tag=playing,scores={choose_view=0}] choose_view 1
scoreboard players add @a[tag=playing,scores={choose_view=1..}] choose_view 1
scoreboard players add @r[tag=playing,scores={choose_view=0}] choose_view 1
scoreboard players add @a[tag=playing,scores={choose_view=1..}] choose_view 1
scoreboard players add @r[tag=playing,scores={choose_view=0}] choose_view 1
scoreboard players add @a[tag=playing,scores={choose_view=1..}] choose_view 1
scoreboard players add @r[tag=playing,scores={choose_view=0}] choose_view 1
scoreboard players add @a[tag=playing,scores={choose_view=1..}] choose_view 1
scoreboard players add @r[tag=playing,scores={choose_view=0}] choose_view 1
scoreboard players add @a[tag=playing,scores={choose_view=1..}] choose_view 1
scoreboard players remove @a[tag=playing] choose_view 1
tp @a[tag=playing,scores={choose_view=11}] -1000 66 10 facing -1000 65 0
tp @a[tag=playing,scores={choose_view=10}] -1000 66 -10 facing -1000 65 0
tp @a[tag=playing,scores={choose_view=9}] -1010 66 0 facing -1000 65 0
tp @a[tag=playing,scores={choose_view=8}] -990 66 0 facing -1000 65 0
tp @a[tag=playing,scores={choose_view=7}] -995 66 9 facing -1000 65 0
tp @a[tag=playing,scores={choose_view=6}] -1005 66 -9 facing -1000 65 0
tp @a[tag=playing,scores={choose_view=5}] -1005 66 9 facing -1000 65 0
tp @a[tag=playing,scores={choose_view=4}] -995 66 -9 facing -1000 65 0
tp @a[tag=playing,scores={choose_view=3}] -991 66 5 facing -1000 65 0
tp @a[tag=playing,scores={choose_view=2}] -1009 66 -5 facing -1000 65 0
tp @a[tag=playing,scores={choose_view=1}] -1009 66 5 facing -1000 65 0
scoreboard players set $time update_bossbar 20
scoreboard players set $time game_timer 300
kill @e[tag=v_option]
function game:get_theme
summon area_effect_cloud 0 5 0 {Tags:["v_option_1","v_option"],Duration:500}
setblock 0 0 0 air
setblock 0 0 0 oak_sign{Text1:'[{"nbt":"Theme","storage":"minecraft:theme","interpret":true}]'}
execute as @e[tag=v_option_1] at @s run data modify entity @s CustomName set from block 0 0 0 Text1
scoreboard players operation $theme v_theme_1 = $rand random
function game:get_theme
summon area_effect_cloud 0 5 0 {Tags:["v_option_2","v_option"],Duration:500}
setblock 0 0 0 air
setblock 0 0 0 oak_sign{Text1:'[{"nbt":"Theme","storage":"minecraft:theme","interpret":true}]'}
execute as @e[tag=v_option_2] at @s run data modify entity @s CustomName set from block 0 0 0 Text1
scoreboard players operation $theme v_theme_2 = $rand random
function game:get_theme
summon area_effect_cloud 0 5 0 {Tags:["v_option_3","v_option"],Duration:500}
execute as @e[tag=v_option_3] at @s run data modify entity @s CustomName set from entity @e[tag=theme,limit=1,sort=random] CustomName
setblock 0 0 0 air
setblock 0 0 0 oak_sign{Text1:'[{"nbt":"Theme","storage":"minecraft:theme","interpret":true}]'}
execute as @e[tag=v_option_3] at @s run data modify entity @s CustomName set from block 0 0 0 Text1
scoreboard players operation $theme v_theme_3 = $rand random
function game:battle/voting_period
effect give @a[tag=playing] weakness 1000 255 true
scoreboard objectives remove points
scoreboard objectives add points dummy
execute if score $number team matches 2.. run function game:battle/teams/game_start