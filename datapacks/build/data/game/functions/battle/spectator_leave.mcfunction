tellraw @s[team=!spectator] {"text":"Please stay and watch the game.","color":"red"}
playsound minecraft:block.note_block.didgeridoo master @s[team=!spectator] ~ ~ ~ 10000 0
execute at @e[type=area_effect_cloud,sort=nearest,limit=1,tag=build_being_rated] positioned ~12 ~5 ~12 run tp @s ~ ~ ~
execute at @s run tp @s ~ ~ ~ facing entity @p[tag=builder,gamemode=creative]