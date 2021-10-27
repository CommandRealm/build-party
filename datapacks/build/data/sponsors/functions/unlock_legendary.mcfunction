kill @e[type=area_effect_cloud,tag=randomization]
execute unless entity @s[tag=unlock_s_8] run summon area_effect_cloud 0 10 0 {Duration:1,Tags:["randomization","randomization_s_8"]}
playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1000 1.20
tellraw @s {"text":"You have a \"sponsorship\" offer!","color":"gold","bold":true}
tag @e[tag=randomization,type=area_effect_cloud,sort=random,limit=1] add sponsor_select
execute if entity @e[tag=randomization,type=area_effect_cloud,sort=random,limit=1,tag=sponsor_select,tag=randomization_s_8] run tag @s add unlock_s_8
execute if entity @e[tag=randomization,type=area_effect_cloud,sort=random,limit=1,tag=sponsor_select,tag=randomization_s_8] run tellraw @s [{"text":"","bold":false},{"text":"(","color":"gold","bold":true},{"text":"Dimension Convention","color":"dark_red","bold":false},{"text":") ","color":"gold","bold":true},{"text":"would like to offer you the opportunity to use their building area!","color":"yellow"},{"text":"\nYou can select it in the menu.","color":"gold"}]