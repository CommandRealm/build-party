summon area_effect_cloud -0.18 73.4 64.9 {Tags:["check_sign","remove","check_g_time"],Duration:20}
summon area_effect_cloud -0.24 73.4 64.9 {Tags:["check_sign","remove","check_g_time"],Duration:20}
summon area_effect_cloud -0.12 73.4 64.9 {Tags:["check_sign","remove","check_g_time"],Duration:20}
summon area_effect_cloud -0.82 73.4 64.9 {Tags:["check_sign","add","check_g_time"],Duration:20}
summon area_effect_cloud -0.88 73.4 64.9 {Tags:["check_sign","add","check_g_time"],Duration:20}
summon area_effect_cloud -0.76 73.4 64.9 {Tags:["check_sign","add","check_g_time"],Duration:20}
execute unless entity @e[distance=..0.05,type=area_effect_cloud,tag=check_sign,tag=check_g_time] if entity @s[distance=..6] positioned ^ ^ ^0.05 run function options:raycast_g_time
kill @e[tag=check_sign]