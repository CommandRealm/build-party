##execute if entity @s[tag=builder] run tellraw @s {"text":"You can not do this right now.","color":"red"}
##execute unless entity @a[tag=builder,gamemode=creative] run tellraw @s {"text":"You can not do this right now.","color":"red"}
##execute if entity @s[tag=!builder] if entity @a[tag=builder,gamemode=creative] run tellraw @s {"text":"Swapping to guessing mode.","color":"green"}
##execute if entity @s[tag=!builder] if entity @a[tag=builder,gamemode=creative] run gamemode adventure @s
##scoreboard players enable @s switch_mode
##tag @s add switched_mode
##execute if entity @s[tag=!builder] if entity @a[tag=builder,gamemode=creative] run tellraw @s[team=guessing] [{"text":"You are currently in guessing mode! To go to spectator mode, click ","color":"gray"},{"text":"here.","color":"white","bold":true,"italic":true,"hoverEvent":{"action":"show_text","value":["",{"text":"Click to enter guessing mode.","color":"white","italic":false}]},"clickEvent":{"action":"run_command","value":"/trigger switch_mode set 1"}}]