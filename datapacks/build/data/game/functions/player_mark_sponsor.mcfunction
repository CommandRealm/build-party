execute as @a[tag=builder] at @s run function game:mark_sponsor
execute if score $number mode matches 0 as @a[team=guessing] run function game:guess/fill_books

execute if score $number mode matches 0 run clear @a[tag=building]
execute if score $number mode matches 0 as @a[tag=playing,tag=builder] at @s run tp @a[team=guessing,tag=playing] ~ 73.5 ~7.5 facing entity @s
