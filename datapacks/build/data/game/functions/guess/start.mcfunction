tag @a[tag=builder] add built
tag @a remove builder
tag @r[tag=playing,tag=!built] add builder
team join guessing @a[tag=playing]
team join building @a[tag=builder]
clear @a[tag=builder]
execute if entity @a[team=building] run function game:guess/start_round
scoreboard players set $time update_bossbar 20