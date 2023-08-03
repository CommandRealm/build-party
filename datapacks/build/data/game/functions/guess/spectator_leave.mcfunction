tellraw @s ["",{"text":"☀ ","color":"yellow","bold":true},{"text":"Please stay and watch the game.","color":"red"}]
playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 10000 0
execute at @e[tag=sponsor_marker,type=area_effect_cloud,sort=nearest,limit=1] positioned ~12 ~5 ~12 run tp @s ~ ~ ~
execute at @s run tp @s ~ ~ ~ facing entity @p[tag=builder,gamemode=creative]