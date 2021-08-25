tag @a remove builder
tag @a remove built
function game:guess/start
fill -32 8 8 -32 1 8 redstone_block
scoreboard objectives remove points
scoreboard objectives add points dummy {"text":"- POINTS -","color":"gold","bold":true}
scoreboard objectives setdisplay sidebar points
scoreboard players add @a[tag=playing] points 0
scoreboard players set @a guess_view 0
bossbar remove timer
bossbar add timer {"text":"Build time remaining","color":"blue","underlined":true}
bossbar set timer color blue
bossbar set timer players @a[tag=playing]
bossbar set timer style progress
execute store result bossbar timer max run scoreboard players get $time set_timer
execute store result bossbar timer value run scoreboard players get $time set_timer
function game:update_bossbar