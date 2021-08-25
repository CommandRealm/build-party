kill @e[type=area_effect_cloud,tag=randomization]
execute unless entity @s[tag=unlock_s_6] run summon area_effect_cloud 0 10 0 {Duration:1,Tags:["randomization","randomization_s_6"]}
execute unless entity @s[tag=unlock_s_7] run summon area_effect_cloud 0 10 0 {Duration:1,Tags:["randomization","randomization_s_7"]}
playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1000 1.5
tellraw @s {"text":"You have a \"sponsorship\" offer!","color":"light_purple"}
tag @e[tag=randomization,type=area_effect_cloud,sort=random,limit=1] add sponsor_select
execute if entity @e[tag=randomization,type=area_effect_cloud,sort=random,limit=1,tag=sponsor_select,tag=randomization_s_6] run tag @s add unlock_s_6
execute if entity @e[tag=randomization,type=area_effect_cloud,sort=random,limit=1,tag=sponsor_select,tag=randomization_s_6] run tellraw @s [{"text":"","bold":false},{"text":"(","color":"green","bold":true},{"text":"Woody's Lumber","color":"#9f5b1f","bold":false},{"text":") ","color":"green","bold":true},{"text":"would like to offer you the opportunity to use their building area!","color":"yellow"},{"text":"\nYou can select it in the menu.","color":"gold"}]
execute if entity @e[tag=randomization,type=area_effect_cloud,sort=random,limit=1,tag=sponsor_select,tag=randomization_s_7] run tag @s add unlock_s_7
execute if entity @e[tag=randomization,type=area_effect_cloud,sort=random,limit=1,tag=sponsor_select,tag=randomization_s_7] run tellraw @s [{"text":"","bold":false},{"text":"(","color":"yellow","bold":true},{"text":"Beetopia","color":"gold","bold":false},{"text":") ","color":"yellow","bold":true},{"text":"would like to offer you the opportunity to use their building area!","color":"yellow"},{"text":"\nYou can select it in the menu.","color":"gold"}]