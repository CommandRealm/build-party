execute if entity @a[tag=!built,tag=playing] run function game:guess/start
execute unless entity @a[tag=!built,tag=playing] run function game:guess/determine_winner