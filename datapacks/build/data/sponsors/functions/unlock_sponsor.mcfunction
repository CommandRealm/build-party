kill @e[type=area_effect_cloud,tag=randomization]
execute unless entity @s[tag=unlock_s_1,tag=unlock_s_2,tag=unlock_s_3,tag=unlock_s_4,tag=unlock_s_5] run summon area_effect_cloud 0 10 0 {Duration:1,Tags:["randomization","randomization_c"]}
execute unless entity @s[tag=unlock_s_1,tag=unlock_s_2,tag=unlock_s_3,tag=unlock_s_4,tag=unlock_s_5] run summon area_effect_cloud 0 10 0 {Duration:1,Tags:["randomization","randomization_c"]}
execute unless entity @s[tag=unlock_s_1,tag=unlock_s_2,tag=unlock_s_3,tag=unlock_s_4,tag=unlock_s_5] run summon area_effect_cloud 0 10 0 {Duration:1,Tags:["randomization","randomization_c"]}
execute unless entity @s[tag=unlock_s_1,tag=unlock_s_2,tag=unlock_s_3,tag=unlock_s_4,tag=unlock_s_5] run summon area_effect_cloud 0 10 0 {Duration:1,Tags:["randomization","randomization_c"]}
execute unless entity @s[tag=unlock_s_1,tag=unlock_s_2,tag=unlock_s_3,tag=unlock_s_4,tag=unlock_s_5] run summon area_effect_cloud 0 10 0 {Duration:1,Tags:["randomization","randomization_c"]}
execute unless entity @s[tag=unlock_s_1,tag=unlock_s_2,tag=unlock_s_3,tag=unlock_s_4,tag=unlock_s_5] run summon area_effect_cloud 0 10 0 {Duration:1,Tags:["randomization","randomization_c"]}
execute unless entity @s[tag=unlock_s_1,tag=unlock_s_2,tag=unlock_s_3,tag=unlock_s_4,tag=unlock_s_5] run summon area_effect_cloud 0 10 0 {Duration:1,Tags:["randomization","randomization_c"]}
execute unless entity @s[tag=unlock_s_1,tag=unlock_s_2,tag=unlock_s_3,tag=unlock_s_4,tag=unlock_s_5] run summon area_effect_cloud 0 10 0 {Duration:1,Tags:["randomization","randomization_c"]}
execute unless entity @s[tag=unlock_s_6,tag=unlock_s_7] run summon area_effect_cloud 0 10 0 {Duration:1,Tags:["randomization","randomization_e"]}
execute unless entity @s[tag=unlock_s_6,tag=unlock_s_7] run summon area_effect_cloud 0 10 0 {Duration:1,Tags:["randomization","randomization_e"]}
execute unless entity @s[tag=unlock_s_6,tag=unlock_s_7] run summon area_effect_cloud 0 10 0 {Duration:1,Tags:["randomization","randomization_e"]}
execute unless entity @s[tag=unlock_s_8] run summon area_effect_cloud 0 10 0 {Duration:1,Tags:["randomization","randomization_l"]}
tag @e[tag=randomization,type=area_effect_cloud] add sponsor_select
execute if entity @e[tag=randomization,type=area_effect_cloud,tag=sponsor_select,tag=randomization_c] run function sponsors:unlock_common
execute if entity @e[tag=randomization,type=area_effect_cloud,tag=sponsor_select,tag=randomization_e] run function sponsors:unlock_epic
execute if entity @e[tag=randomization,type=area_effect_cloud,tag=sponsor_select,tag=randomization_l] run function sponsors:unlock_legendary
execute unless entity @e[tag=randomization,type=area_effect_cloud] run function sponsors:unlock_nothing