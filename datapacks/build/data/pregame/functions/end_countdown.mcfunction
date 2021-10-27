scoreboard players set $time startup_timer -1
scoreboard objectives setdisplay sidebar

data modify entity @e[type=area_effect_cloud,tag=start_button_text,limit=1] CustomNameVisible set value 1b
data modify entity @e[type=area_effect_cloud,tag=start_button_text,limit=1] CustomName set value '[{"text":"- ","color":"gray"},{"text":"✦ ","color":"gold"},{"text":"Start","color":"yellow","bold":true},{"text":" ✦ ","color":"gold"},{"text":" -","color":"gray"}]'