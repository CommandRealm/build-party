summon area_effect_cloud 9.9 73.4 60.18 {Tags:["check_sign","remove","check_blocks"],Duration:20}
summon area_effect_cloud 9.9 73.4 60.24 {Tags:["check_sign","remove","check_blocks"],Duration:20}
summon area_effect_cloud 9.9 73.4 60.12 {Tags:["check_sign","remove","check_blocks"],Duration:20}
summon area_effect_cloud 9.9 73.4 60.82 {Tags:["check_sign","add","check_blocks"],Duration:20}
summon area_effect_cloud 9.9 73.4 60.88 {Tags:["check_sign","add","check_blocks"],Duration:20}
summon area_effect_cloud 9.9 73.4 60.76 {Tags:["check_sign","add","check_blocks"],Duration:20}
execute unless entity @e[distance=..0.05,type=area_effect_cloud,tag=check_sign,tag=check_blocks] if entity @s[distance=..6] positioned ^ ^ ^0.05 run function options:raycast_blocks
kill @e[tag=check_sign]