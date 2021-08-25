tag @s[scores={music=9}] add toggle_cosmetic
scoreboard players set @s music 9
scoreboard players set @s[tag=toggle_cosmetic] music 0
tag @a remove toggle_cosmetic
function chest_menu:start_advancements