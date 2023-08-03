summon area_effect_cloud 10.9 73.4 62.18 {Tags:["check_sign","remove","check_entities"],Duration:20}
summon area_effect_cloud 10.9 73.4 62.24 {Tags:["check_sign","remove","check_entities"],Duration:20}
summon area_effect_cloud 10.9 73.4 62.12 {Tags:["check_sign","remove","check_entities"],Duration:20}
summon area_effect_cloud 10.9 73.4 62.82 {Tags:["check_sign","add","check_entities"],Duration:20}
summon area_effect_cloud 10.9 73.4 62.88 {Tags:["check_sign","add","check_entities"],Duration:20}
summon area_effect_cloud 10.9 73.4 62.76 {Tags:["check_sign","add","check_entities"],Duration:20}
execute unless entity @e[distance=..0.05,type=area_effect_cloud,tag=check_sign,tag=check_entities] if entity @s[distance=..6] positioned ^ ^ ^0.05 run function options:raycast_entities
kill @e[tag=check_sign]