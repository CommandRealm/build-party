tag @s[scores={hat=18}] add toggle_cosmetic
tag @s add replace_hat
replaceitem entity @s armor.head air
scoreboard players set @s hat 18
scoreboard players set @s[tag=toggle_cosmetic] hat 0
tag @a remove toggle_cosmetic
function chest_menu:start_advancements