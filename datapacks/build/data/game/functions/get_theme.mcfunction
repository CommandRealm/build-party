setblock 0 1 0 air
setblock 0 1 0 chest
execute store result score $rand random run loot insert 0 1 0 loot random:themes

kill @e[type=area_effect_cloud,tag=random]
kill @e[type=area_effect_cloud,tag=theme]
fill -32 8 7 -32 1 7 air
fill -32 1 7 -32 9 7 air
function game:generate_theme

















fill -32 8 8 -32 1 8 redstone_block destroy