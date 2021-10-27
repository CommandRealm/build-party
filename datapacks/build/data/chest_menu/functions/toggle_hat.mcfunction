tag @s[scores={hat=18}] add toggle_cosmetic
tag @s add replace_hat
item replace entity @s armor.head with air
scoreboard players set @s hat 18
scoreboard players set @s[tag=toggle_cosmetic] hat 0
tag @a remove toggle_cosmetic
function chest_menu:start_advancements