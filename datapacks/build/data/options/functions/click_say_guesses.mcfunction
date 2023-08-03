summon area_effect_cloud 11.9 73.4 64.18 {Tags:["check_sign","remove","check_say_guesses"],Duration:20}
summon area_effect_cloud 11.9 73.4 64.24 {Tags:["check_sign","remove","check_say_guesses"],Duration:20}
summon area_effect_cloud 11.9 73.4 64.12 {Tags:["check_sign","remove","check_say_guesses"],Duration:20}
summon area_effect_cloud 11.9 73.4 64.82 {Tags:["check_sign","add","check_say_guesses"],Duration:20}
summon area_effect_cloud 11.9 73.4 64.88 {Tags:["check_sign","add","check_say_guesses"],Duration:20}
summon area_effect_cloud 11.9 73.4 64.76 {Tags:["check_sign","add","check_say_guesses"],Duration:20}
execute unless entity @e[distance=..0.05,type=area_effect_cloud,tag=check_sign,tag=check_say_guesses] if entity @s[distance=..6] positioned ^ ^ ^0.05 run function options:raycast_say_guesses
kill @e[tag=check_sign]