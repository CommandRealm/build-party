summon area_effect_cloud -2.18 73.4 65.9 {Tags:["check_sign","remove","check_ready"],Duration:20}
summon area_effect_cloud -2.24 73.4 65.9 {Tags:["check_sign","remove","check_ready"],Duration:20}
summon area_effect_cloud -2.12 73.4 65.9 {Tags:["check_sign","remove","check_ready"],Duration:20}
summon area_effect_cloud -2.82 73.4 65.9 {Tags:["check_sign","add","check_ready"],Duration:20}
summon area_effect_cloud -2.88 73.4 65.9 {Tags:["check_sign","add","check_ready"],Duration:20}
summon area_effect_cloud -2.76 73.4 65.9 {Tags:["check_sign","add","check_ready"],Duration:20}
execute unless entity @e[distance=..0.05,type=area_effect_cloud,tag=check_sign,tag=check_ready] if entity @s[distance=..6] positioned ^ ^ ^0.05 run function options:raycast_ready
kill @e[tag=check_sign]