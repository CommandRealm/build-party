clear @s minecraft:bat_spawn_egg
clear @s minecraft:bee_spawn_egg
clear @s minecraft:blaze_spawn_egg
clear @s minecraft:cat_spawn_egg
clear @s minecraft:cave_spider_spawn_egg
clear @s minecraft:chicken_spawn_egg
clear @s minecraft:cod_spawn_egg
clear @s minecraft:cow_spawn_egg
clear @s minecraft:creeper_spawn_egg
clear @s minecraft:dolphin_spawn_egg
clear @s minecraft:donkey_spawn_egg
clear @s minecraft:drowned_spawn_egg
clear @s minecraft:elder_guardian_spawn_egg
clear @s minecraft:enderman_spawn_egg
clear @s minecraft:endermite_spawn_egg
clear @s minecraft:evoker_spawn_egg
clear @s minecraft:fox_spawn_egg
clear @s minecraft:ghast_spawn_egg
clear @s minecraft:guardian_spawn_egg
clear @s minecraft:horse_spawn_egg
clear @s minecraft:husk_spawn_egg
clear @s minecraft:llama_spawn_egg
clear @s minecraft:magma_cube_spawn_egg
clear @s minecraft:mooshroom_spawn_egg
clear @s minecraft:mule_spawn_egg
clear @s minecraft:ocelot_spawn_egg
clear @s minecraft:panda_spawn_egg
clear @s minecraft:parrot_spawn_egg
clear @s minecraft:phantom_spawn_egg
clear @s minecraft:pig_spawn_egg
clear @s minecraft:pillager_spawn_egg
clear @s minecraft:polar_bear_spawn_egg
clear @s minecraft:pufferfish_spawn_egg
clear @s minecraft:rabbit_spawn_egg
clear @s minecraft:ravager_spawn_egg
clear @s minecraft:salmon_spawn_egg
clear @s minecraft:sheep_spawn_egg
clear @s minecraft:shulker_spawn_egg
clear @s minecraft:silverfish_spawn_egg
clear @s minecraft:skeleton_spawn_egg
clear @s minecraft:skeleton_horse_spawn_egg
clear @s minecraft:slime_spawn_egg
clear @s minecraft:spider_spawn_egg
clear @s minecraft:squid_spawn_egg
clear @s minecraft:stray_spawn_egg
clear @s minecraft:trader_llama_spawn_egg
clear @s minecraft:tropical_fish_spawn_egg
clear @s minecraft:turtle_spawn_egg
clear @s minecraft:vex_spawn_egg
clear @s minecraft:villager_spawn_egg
clear @s minecraft:vindicator_spawn_egg
clear @s minecraft:wandering_trader_spawn_egg
clear @s minecraft:witch_spawn_egg
clear @s minecraft:wither_skeleton_spawn_egg
clear @s minecraft:wolf_spawn_egg
clear @s minecraft:piglin_spawn_egg
clear @s minecraft:wolf_spawn_egg
clear @s minecraft:hoglin_spawn_egg
clear @s minecraft:strider_spawn_egg
clear @s minecraft:zombie_spawn_egg
clear @s minecraft:zombie_horse_spawn_egg
clear @s minecraft:zombified_piglin_spawn_egg
clear @s minecraft:zombie_villager_spawn_egg
clear @s minecraft:bee_nest
clear @s minecraft:beehive
clear @s minecraft:command_block
clear @s minecraft:chain_command_block
clear @s minecraft:repeating_command_block
clear @s minecraft:firework_rocket
clear @s minecraft:filled_map
clear @s minecraft:structure_block
clear @s minecraft:spawner
clear @s minecraft:respawn_anchor
clear @s chest
clear @s trapped_chest
clear @s furnace
clear @s barrel
clear @s dispenser
clear @s dropper
clear @s blast_furnace
clear @s smoker
clear @s shulker_box
clear @s white_shulker_box
clear @s orange_shulker_box
clear @s magenta_shulker_box
clear @s light_blue_shulker_box
clear @s yellow_shulker_box
clear @s lime_shulker_box
clear @s pink_shulker_box
clear @s gray_shulker_box
clear @s light_gray_shulker_box
clear @s cyan_shulker_box
clear @s purple_shulker_box
clear @s blue_shulker_box
clear @s brown_shulker_box
clear @s green_shulker_box
clear @s red_shulker_box
clear @s black_shulker_box
clear @s respawn_anchor
item replace entity @s[nbt={Inventory: [{Slot: 102b, id: "minecraft:elytra"}]}] armor.chest with air
playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 0
tellraw @s [{"text":"!INVALD ITEM!","color":"dark_red"},{"text":" You cannot use this item here.","color":"red"}]
scoreboard players reset @s fly