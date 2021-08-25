summon area_effect_cloud 1.18 73.4 64.9 {Tags:["check_sign","remove","check_mode"],Duration:20}
summon area_effect_cloud 1.24 73.4 64.9 {Tags:["check_sign","remove","check_mode"],Duration:20}
summon area_effect_cloud 1.12 73.4 64.9 {Tags:["check_sign","remove","check_mode"],Duration:20}
summon area_effect_cloud 1.82 73.4 64.9 {Tags:["check_sign","add","check_mode"],Duration:20}
summon area_effect_cloud 1.88 73.4 64.9 {Tags:["check_sign","add","check_mode"],Duration:20}
summon area_effect_cloud 1.76 73.4 64.9 {Tags:["check_sign","add","check_mode"],Duration:20}
execute unless entity @e[distance=..0.05,type=area_effect_cloud,tag=check_sign,tag=check_mode] if entity @s[distance=..6] positioned ^ ^ ^0.05 run function options:raycast_mode
kill @e[tag=check_sign]