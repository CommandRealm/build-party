tag @s[scores={prefix=100}] add toggle_cosmetic
scoreboard players set @s prefix 100
scoreboard players set @s[tag=toggle_cosmetic] prefix 0
tag @a remove toggle_cosmetic
function chest_menu:start_advancements
function general:rank