##called to generate a new theme

scoreboard players set $30_sec game -1

scoreboard players remove @s points 1
tellraw @a[x=0,y=66,z=0,distance=500..] [{"selector":"@s"},{"text":" has changed the theme. ","color":"gold"},{"text":"The previous theme was: ","color":"gray"},{"nbt":"Theme","storage":"minecraft:theme","interpret":true,"color":"yellow","bold":false}]
execute as @a[x=0,y=66,z=0,distance=500..] at @s run playsound minecraft:block.amethyst_cluster.break master @s ~ ~ ~ 1 0

function game:get_theme
function game:guess/underscores/convert