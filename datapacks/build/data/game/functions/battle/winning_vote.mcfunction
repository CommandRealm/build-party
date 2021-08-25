execute if entity @e[tag=v_option,scores={theme_results=0},tag=v_option_1] run scoreboard players operation $rand random = $theme v_theme_1
execute if entity @e[tag=v_option,scores={theme_results=0},tag=v_option_2] run scoreboard players operation $rand random = $theme v_theme_2
execute if entity @e[tag=v_option,scores={theme_results=0},tag=v_option_3] run scoreboard players operation $rand random = $theme v_theme_3
kill @e[tag=theme]
function game:generate_theme