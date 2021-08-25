tag @s[tag=n_suit] add toggle_cosmetic
tag @s add n_suit
tag @s[tag=toggle_cosmetic] remove n_suit
tag @a remove toggle_cosmetic
function chest_menu:start_advancements
clear @s netherite_chestplate
clear @s netherite_leggings
clear @s netherite_boots
tag @s add replace_hat