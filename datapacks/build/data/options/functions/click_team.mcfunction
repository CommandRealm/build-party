summon area_effect_cloud 3.18 73.4 65.9 {Tags:["check_sign","add","check_team"],Duration:20}
summon area_effect_cloud 3.24 73.4 65.9 {Tags:["check_sign","add","check_team"],Duration:20}
summon area_effect_cloud 3.12 73.4 65.9 {Tags:["check_sign","add","check_team"],Duration:20}
summon area_effect_cloud 3.82 73.4 65.9 {Tags:["check_sign","remove","check_team"],Duration:20}
summon area_effect_cloud 3.88 73.4 65.9 {Tags:["check_sign","remove","check_team"],Duration:20}
summon area_effect_cloud 3.76 73.4 65.9 {Tags:["check_sign","remove","check_team"],Duration:20}
execute unless entity @e[distance=..0.05,type=area_effect_cloud,tag=check_sign,tag=check_team] if entity @s[distance=..6] positioned ^ ^ ^0.05 run function options:raycast_team
kill @e[tag=check_sign]