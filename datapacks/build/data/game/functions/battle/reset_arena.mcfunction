fill -988 65 -12 -1012 63 12 blue_concrete
fill -1012 66 12 -988 110 -12 air
execute if score $number team matches 1 run function game:battle/change_arena
execute if score $number team matches 2.. run function game:battle/teams/change_arena
kill @e[type=!player,tag=!live,x=-1000,y=66,z=0,distance=..200]
effect clear @a[tag=playing]