tag @s[scores={guess_sounds=9}] add toggle_cosmetic
scoreboard players set @s guess_sounds 9
scoreboard players set @s[tag=toggle_cosmetic] guess_sounds 0
tag @a remove toggle_cosmetic
function chest_menu:start_advancements