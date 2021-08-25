summon area_effect_cloud -0.18 73.4 64.9 {Tags:["check_sign","remove","check_v_time"],Duration:20}
summon area_effect_cloud -0.24 73.4 64.9 {Tags:["check_sign","remove","check_v_time"],Duration:20}
summon area_effect_cloud -0.12 73.4 64.9 {Tags:["check_sign","remove","check_v_time"],Duration:20}
summon area_effect_cloud -0.82 73.4 64.9 {Tags:["check_sign","add","check_v_time"],Duration:20}
summon area_effect_cloud -0.88 73.4 64.9 {Tags:["check_sign","add","check_v_time"],Duration:20}
summon area_effect_cloud -0.76 73.4 64.9 {Tags:["check_sign","add","check_v_time"],Duration:20}
execute if entity @e[distance=..0.05,type=area_effect_cloud,tag=check_sign,tag=remove,tag=check_v_time] run scoreboard players remove $time set_battle_timer 2400
execute if entity @e[distance=..0.05,type=area_effect_cloud,tag=check_sign,tag=check_v_time] run function options:add_v_time
execute unless entity @e[distance=..0.05,type=area_effect_cloud,tag=check_sign,tag=check_v_time] if entity @s[distance=..6] positioned ^ ^ ^0.05 run function options:click_v_time
kill @e[tag=check_sign]