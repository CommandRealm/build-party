execute if score $number mode matches 0 run function game:guess/main
execute if score $number mode matches 1 run function game:battle/main
execute as @a[tag=builder] at @s as @e[type=!player,type=!area_effect_cloud,type=!armor_stand,distance=..10,type=!item_frame,type=!item,type=!arrow,type=!minecart,type=!boat,type=!chest_minecart,type=!furnace_minecart,type=!hopper_minecart,type=!painting,type=!experience_bottle,type=!experience_orb,type=!egg,type=!falling_block,type=!firework_rocket,type=!spectral_arrow,type=!spawner_minecart,type=!trident,tag=!live] at @s unless entity @s[nbt={NoAI:1b}] run tp @s ~ ~ ~ facing entity @p[tag=builder]
execute as @a[tag=builder] at @s as @e[type=item,distance=..100] at @s run data merge entity @s {Age:-10000}
execute as @a[tag=builder] at @s as @e[type=!player,type=!area_effect_cloud,type=!armor_stand,type=!item,type=!arrow,distance=..10,type=!item_frame,type=!minecart,type=!boat,type=!chest_minecart,type=!furnace_minecart,type=!hopper_minecart,type=!painting,type=!experience_bottle,type=!experience_orb,type=!egg,type=!falling_block,type=!firework_rocket,type=!spectral_arrow,type=!spawner_minecart,type=!trident] run data merge entity @s {NoAI:1b,Invulnerable:1b,PersistenceRequired:1b}
kill @e[type=minecraft:potion]
kill @e[type=minecraft:ender_pearl]
execute as @a[tag=playing,tag=builder] at @s store result score @s break_portal run fill ~2 ~2 ~2 ~-2 ~-2 ~-2 air replace nether_portal
execute as @a[tag=playing,scores={break_portal=1..}] at @s run function game:break_portal
execute as @a[tag=playing,tag=builder,scores={use_eye=1..}] at @s run function game:use_eye
execute as @a[tag=playing,tag=builder,nbt={Inventory:[{id:"minecraft:bat_spawn_egg",tag:{}}]}] at @s run function game:invalid_item
execute as @a[tag=playing,tag=builder,nbt={Inventory:[{id:"minecraft:bee_spawn_egg",tag:{}}]}] at @s run function game:invalid_item
execute as @a[tag=playing,tag=builder,nbt={Inventory:[{id:"minecraft:blaze_spawn_egg",tag:{}}]}] at @s run function game:invalid_item
execute as @a[tag=playing,tag=builder,nbt={Inventory:[{id:"minecraft:cat_spawn_egg",tag:{}}]}] at @s run function game:invalid_item
execute as @a[tag=playing,tag=builder,nbt={Inventory:[{id:"minecraft:cave_spider_spawn_egg",tag:{}}]}] at @s run function game:invalid_item
execute as @a[tag=playing,tag=builder,nbt={Inventory:[{id:"minecraft:chicken_spawn_egg",tag:{}}]}] at @s run function game:invalid_item
execute as @a[tag=playing,tag=builder,nbt={Inventory:[{id:"minecraft:cod_spawn_egg",tag:{}}]}] at @s run function game:invalid_item
execute as @a[tag=playing,tag=builder,nbt={Inventory:[{id:"minecraft:cow_spawn_egg",tag:{}}]}] at @s run function game:invalid_item
execute as @a[tag=playing,tag=builder,nbt={Inventory:[{id:"minecraft:creeper_spawn_egg",tag:{}}]}] at @s run function game:invalid_item
execute as @a[tag=playing,tag=builder,nbt={Inventory:[{id:"minecraft:dolphin_spawn_egg",tag:{}}]}] at @s run function game:invalid_item
execute as @a[tag=playing,tag=builder,nbt={Inventory:[{id:"minecraft:donkey_spawn_egg",tag:{}}]}] at @s run function game:invalid_item
execute as @a[tag=playing,tag=builder,nbt={Inventory:[{id:"minecraft:drowned_spawn_egg",tag:{}}]}] at @s run function game:invalid_item
execute as @a[tag=playing,tag=builder,nbt={Inventory:[{id:"minecraft:elder_guardian_spawn_egg",tag:{}}]}] at @s run function game:invalid_item
execute as @a[tag=playing,tag=builder,nbt={Inventory:[{id:"minecraft:enderman_spawn_egg",tag:{}}]}] at @s run function game:invalid_item
execute as @a[tag=playing,tag=builder,nbt={Inventory:[{id:"minecraft:endermite_spawn_egg",tag:{}}]}] at @s run function game:invalid_item
execute as @a[tag=playing,tag=builder,nbt={Inventory:[{id:"minecraft:evoker_spawn_egg",tag:{}}]}] at @s run function game:invalid_item
execute as @a[tag=playing,tag=builder,nbt={Inventory:[{id:"minecraft:fox_spawn_egg",tag:{}}]}] at @s run function game:invalid_item
execute as @a[tag=playing,tag=builder,nbt={Inventory:[{id:"minecraft:ghast_spawn_egg",tag:{}}]}] at @s run function game:invalid_item
execute as @a[tag=playing,tag=builder,nbt={Inventory:[{id:"minecraft:guardian_spawn_egg",tag:{}}]}] at @s run function game:invalid_item
execute as @a[tag=playing,tag=builder,nbt={Inventory:[{id:"minecraft:horse_spawn_egg",tag:{}}]}] at @s run function game:invalid_item
execute as @a[tag=playing,tag=builder,nbt={Inventory:[{id:"minecraft:husk_spawn_egg",tag:{}}]}] at @s run function game:invalid_item
execute as @a[tag=playing,tag=builder,nbt={Inventory:[{id:"minecraft:llama_spawn_egg",tag:{}}]}] at @s run function game:invalid_item
execute as @a[tag=playing,tag=builder,nbt={Inventory:[{id:"minecraft:magma_cube_spawn_egg",tag:{}}]}] at @s run function game:invalid_item
execute as @a[tag=playing,tag=builder,nbt={Inventory:[{id:"minecraft:mooshroom_spawn_egg",tag:{}}]}] at @s run function game:invalid_item
execute as @a[tag=playing,tag=builder,nbt={Inventory:[{id:"minecraft:mule_spawn_egg",tag:{}}]}] at @s run function game:invalid_item
execute as @a[tag=playing,tag=builder,nbt={Inventory:[{id:"minecraft:ocelot_spawn_egg",tag:{}}]}] at @s run function game:invalid_item
execute as @a[tag=playing,tag=builder,nbt={Inventory:[{id:"minecraft:panda_spawn_egg",tag:{}}]}] at @s run function game:invalid_item
execute as @a[tag=playing,tag=builder,nbt={Inventory:[{id:"minecraft:parrot_spawn_egg",tag:{}}]}] at @s run function game:invalid_item
execute as @a[tag=playing,tag=builder,nbt={Inventory:[{id:"minecraft:phantom_spawn_egg",tag:{}}]}] at @s run function game:invalid_item
execute as @a[tag=playing,tag=builder,nbt={Inventory:[{id:"minecraft:pig_spawn_egg",tag:{}}]}] at @s run function game:invalid_item
execute as @a[tag=playing,tag=builder,nbt={Inventory:[{id:"minecraft:pillager_spawn_egg",tag:{}}]}] at @s run function game:invalid_item
execute as @a[tag=playing,tag=builder,nbt={Inventory:[{id:"minecraft:polar_bear_spawn_egg",tag:{}}]}] at @s run function game:invalid_item
execute as @a[tag=playing,tag=builder,nbt={Inventory:[{id:"minecraft:pufferfish_spawn_egg",tag:{}}]}] at @s run function game:invalid_item
execute as @a[tag=playing,tag=builder,nbt={Inventory:[{id:"minecraft:rabbit_spawn_egg",tag:{}}]}] at @s run function game:invalid_item
execute as @a[tag=playing,tag=builder,nbt={Inventory:[{id:"minecraft:ravager_spawn_egg",tag:{}}]}] at @s run function game:invalid_item
execute as @a[tag=playing,tag=builder,nbt={Inventory:[{id:"minecraft:salmon_spawn_egg",tag:{}}]}] at @s run function game:invalid_item
execute as @a[tag=playing,tag=builder,nbt={Inventory:[{id:"minecraft:sheep_spawn_egg",tag:{}}]}] at @s run function game:invalid_item
execute as @a[tag=playing,tag=builder,nbt={Inventory:[{id:"minecraft:shulker_spawn_egg",tag:{}}]}] at @s run function game:invalid_item
execute as @a[tag=playing,tag=builder,nbt={Inventory:[{id:"minecraft:silverfish_spawn_egg",tag:{}}]}] at @s run function game:invalid_item
execute as @a[tag=playing,tag=builder,nbt={Inventory:[{id:"minecraft:skeleton_spawn_egg",tag:{}}]}] at @s run function game:invalid_item
execute as @a[tag=playing,tag=builder,nbt={Inventory:[{id:"minecraft:skeleton_horse_spawn_egg",tag:{}}]}] at @s run function game:invalid_item
execute as @a[tag=playing,tag=builder,nbt={Inventory:[{id:"minecraft:slime_spawn_egg",tag:{}}]}] at @s run function game:invalid_item
execute as @a[tag=playing,tag=builder,nbt={Inventory:[{id:"minecraft:spider_spawn_egg",tag:{}}]}] at @s run function game:invalid_item
execute as @a[tag=playing,tag=builder,nbt={Inventory:[{id:"minecraft:squid_spawn_egg",tag:{}}]}] at @s run function game:invalid_item
execute as @a[tag=playing,tag=builder,nbt={Inventory:[{id:"minecraft:stray_spawn_egg",tag:{}}]}] at @s run function game:invalid_item
execute as @a[tag=playing,tag=builder,nbt={Inventory:[{id:"minecraft:trader_llama_spawn_egg",tag:{}}]}] at @s run function game:invalid_item
execute as @a[tag=playing,tag=builder,nbt={Inventory:[{id:"minecraft:tropical_fish_spawn_egg",tag:{}}]}] at @s run function game:invalid_item
execute as @a[tag=playing,tag=builder,nbt={Inventory:[{id:"minecraft:turtle_spawn_egg",tag:{}}]}] at @s run function game:invalid_item
execute as @a[tag=playing,tag=builder,nbt={Inventory:[{id:"minecraft:vex_spawn_egg",tag:{}}]}] at @s run function game:invalid_item
execute as @a[tag=playing,tag=builder,nbt={Inventory:[{id:"minecraft:villager_spawn_egg",tag:{}}]}] at @s run function game:invalid_item
execute as @a[tag=playing,tag=builder,nbt={Inventory:[{id:"minecraft:vindicator_spawn_egg",tag:{}}]}] at @s run function game:invalid_item
execute as @a[tag=playing,tag=builder,nbt={Inventory:[{id:"minecraft:wandering_trader_spawn_egg",tag:{}}]}] at @s run function game:invalid_item
execute as @a[tag=playing,tag=builder,nbt={Inventory:[{id:"minecraft:witch_spawn_egg",tag:{}}]}] at @s run function game:invalid_item
execute as @a[tag=playing,tag=builder,nbt={Inventory:[{id:"minecraft:wither_skeleton_spawn_egg",tag:{}}]}] at @s run function game:invalid_item
execute as @a[tag=playing,tag=builder,nbt={Inventory:[{id:"minecraft:wolf_spawn_egg",tag:{}}]}] at @s run function game:invalid_item
execute as @a[tag=playing,tag=builder,nbt={Inventory:[{id:"minecraft:zombie_spawn_egg",tag:{}}]}] at @s run function game:invalid_item
execute as @a[tag=playing,tag=builder,nbt={Inventory:[{id:"minecraft:zombie_horse_spawn_egg",tag:{}}]}] at @s run function game:invalid_item
execute as @a[tag=playing,tag=builder,nbt={Inventory:[{id:"minecraft:zombie_pigman_spawn_egg",tag:{}}]}] at @s run function game:invalid_item
execute as @a[tag=playing,tag=builder,nbt={Inventory:[{id:"minecraft:zombie_villager_spawn_egg",tag:{}}]}] at @s run function game:invalid_item
execute as @a[tag=playing,tag=builder,nbt={Inventory:[{id:"minecraft:bee_nest",tag:{}}]}] at @s run function game:invalid_item
execute as @a[tag=playing,tag=builder,nbt={Inventory:[{id:"minecraft:beehive",tag:{}}]}] at @s run function game:invalid_item
execute as @a[tag=playing,tag=builder,nbt={Inventory:[{id:"minecraft:command_block"}]}] at @s run function game:invalid_item
execute as @a[tag=playing,tag=builder,nbt={Inventory:[{id:"minecraft:chain_command_block"}]}] at @s run function game:invalid_item
execute as @a[tag=playing,tag=builder,nbt={Inventory:[{id:"minecraft:repeating_command_block"}]}] at @s run function game:invalid_item
execute as @a[tag=playing,tag=builder,nbt={Inventory:[{id:"minecraft:firework_rocket",tag:{}}]}] at @s run function game:invalid_item
execute as @a[tag=playing,tag=builder,nbt={Inventory:[{id:"minecraft:filled_map"}]}] at @s run function game:invalid_item
execute as @a[tag=playing,tag=builder,nbt={Inventory:[{id:"minecraft:structure_block"}]}] at @s run function game:invalid_item
execute as @a[tag=playing,tag=builder,nbt={Inventory:[{id:"minecraft:spawner"}]}] at @s run function game:invalid_item
execute as @a[tag=playing,tag=builder,nbt={Inventory:[{id:"minecraft:respawn_anchor"}]}] at @s run function game:invalid_item
execute as @a[tag=playing,tag=builder,nbt={Inventory:[{id:"minecraft:chest",tag:{}}]}] at @s run function game:invalid_item
execute as @a[tag=playing,tag=builder,nbt={Inventory:[{id:"minecraft:trapped_chest",tag:{}}]}] at @s run function game:invalid_item
execute as @a[tag=playing,tag=builder,nbt={Inventory:[{id:"minecraft:furnace",tag:{}}]}] at @s run function game:invalid_item
execute as @a[tag=playing,tag=builder,nbt={Inventory:[{id:"minecraft:barrel",tag:{}}]}] at @s run function game:invalid_item
execute as @a[tag=playing,tag=builder,nbt={Inventory:[{id:"minecraft:dispenser",tag:{}}]}] at @s run function game:invalid_item
execute as @a[tag=playing,tag=builder,nbt={Inventory:[{id:"minecraft:dropper",tag:{}}]}] at @s run function game:invalid_item
execute as @a[tag=playing,tag=builder,nbt={Inventory:[{id:"minecraft:blast_furnace",tag:{}}]}] at @s run function game:invalid_item
execute as @a[tag=playing,tag=builder,nbt={Inventory:[{id:"minecraft:smoker",tag:{}}]}] at @s run function game:invalid_item
execute as @a[tag=playing,tag=builder,nbt={Inventory:[{id:"minecraft:shulker_box",tag:{}}]}] at @s run function game:invalid_item
execute as @a[tag=playing,tag=builder,nbt={Inventory:[{id:"minecraft:white_shulker_box",tag:{}}]}] at @s run function game:invalid_item
execute as @a[tag=playing,tag=builder,nbt={Inventory:[{id:"minecraft:orange_shulker_box",tag:{}}]}] at @s run function game:invalid_item
execute as @a[tag=playing,tag=builder,nbt={Inventory:[{id:"minecraft:magenta_shulker_box",tag:{}}]}] at @s run function game:invalid_item
execute as @a[tag=playing,tag=builder,nbt={Inventory:[{id:"minecraft:light_blue_shulker_box",tag:{}}]}] at @s run function game:invalid_item
execute as @a[tag=playing,tag=builder,nbt={Inventory:[{id:"minecraft:yellow_shulker_box",tag:{}}]}] at @s run function game:invalid_item
execute as @a[tag=playing,tag=builder,nbt={Inventory:[{id:"minecraft:lime_shulker_box",tag:{}}]}] at @s run function game:invalid_item
execute as @a[tag=playing,tag=builder,nbt={Inventory:[{id:"minecraft:pink_shulker_box",tag:{}}]}] at @s run function game:invalid_item
execute as @a[tag=playing,tag=builder,nbt={Inventory:[{id:"minecraft:gray_shulker_box",tag:{}}]}] at @s run function game:invalid_item
execute as @a[tag=playing,tag=builder,nbt={Inventory:[{id:"minecraft:light_gray_shulker_box",tag:{}}]}] at @s run function game:invalid_item
execute as @a[tag=playing,tag=builder,nbt={Inventory:[{id:"minecraft:cyan_shulker_box",tag:{}}]}] at @s run function game:invalid_item
execute as @a[tag=playing,tag=builder,nbt={Inventory:[{id:"minecraft:purple_shulker_box",tag:{}}]}] at @s run function game:invalid_item
execute as @a[tag=playing,tag=builder,nbt={Inventory:[{id:"minecraft:blue_shulker_box",tag:{}}]}] at @s run function game:invalid_item
execute as @a[tag=playing,tag=builder,nbt={Inventory:[{id:"minecraft:brown_shulker_box",tag:{}}]}] at @s run function game:invalid_item
execute as @a[tag=playing,tag=builder,nbt={Inventory:[{id:"minecraft:green_shulker_box",tag:{}}]}] at @s run function game:invalid_item
execute as @a[tag=playing,tag=builder,nbt={Inventory:[{id:"minecraft:red_shulker_box",tag:{}}]}] at @s run function game:invalid_item
execute as @a[tag=playing,tag=builder,nbt={Inventory:[{id:"minecraft:black_shulker_box",tag:{}}]}] at @s run function game:invalid_item
kill @e[type=firework_rocket]
kill @e[type=item,nbt={Item:{id:"minecraft:firework_rocket"}}]
execute as @a[nbt={Dimension:"minecraft:nether"}] run function game:leave_overworld
execute as @a[nbt={Dimension:"minecraft:end"}] run function game:leave_overworld
execute as @a[scores={fly=1..},tag=playing] at @s run function game:invalid_item
effect clear @a[tag=playing] speed
execute as @a[nbt={RootVehicle:{Entity:{id:"minecraft:horse"}}}] at @s run kill @e[type=horse,distance=..2]
execute as @a[nbt={RootVehicle:{Entity:{id:"minecraft:donkey"}}}] at @s run kill @e[type=horse,distance=..2]
execute as @a[nbt={RootVehicle:{Entity:{id:"minecraft:mule"}}}] at @s run kill @e[type=horse,distance=..2]
execute as @e[type=area_effect_cloud,tag=sponsor_marker] at @s run function game:limit_entities
execute as @a[gamemode=spectator] at @s if entity @s[y=44,distance=..20] run function game:guess/spectator_leave
execute as @a[gamemode=spectator] at @s if entity @s[y=130,distance=..20] run function game:guess/spectator_leave
execute as @a[tag=builder,advancements={custom/go_swimming=false}] at @s if block ~ ~ ~ water run advancement grant @s only minecraft:custom/go_swimming
execute as @a[tag=builder,advancements={custom/eat_cookie=false},nbt={SelectedItem:{id:"minecraft:cookie"}}] run advancement grant @s only minecraft:custom/eat_cookie
execute as @a[tag=builder,advancements={custom/sign_book=false},nbt={SelectedItem:{id:"minecraft:writable_book"}}] run advancement grant @s only minecraft:custom/sign_book
execute as @a[tag=builder,advancements={custom/bedrock_box=false}] at @s if block ~ ~-1 ~ bedrock if block ~ ~2 ~ bedrock if block ~1 ~ ~ bedrock if block ~1 ~1 ~ bedrock if block ~-1 ~ ~ bedrock if block ~-1 ~1 ~ bedrock if block ~ ~ ~1 bedrock if block ~ ~1 ~1 bedrock if block ~1 ~ ~ bedrock if block ~ ~1 ~-1 bedrock if block ~1 ~ ~ bedrock if block ~1 ~1 ~ bedrock run advancement grant @s only minecraft:custom/bedrock_box
execute as @a[tag=builder,advancements={custom/jump_on_bed=false}] at @s unless block ~ ~ ~ #beds run scoreboard players reset @s intro_jump
execute as @a[tag=builder,advancements={custom/jump_on_bed=false},scores={intro_jump=1..}] at @s if block ~ ~ ~ #beds run advancement grant @s only minecraft:custom/jump_on_bed
advancement grant @a[advancements={custom/light_tnt=true,custom/go_swimming=true,custom/eat_cookie=true,custom/sign_book=true,custom/bedrock_box=true,custom/jump_on_bed=true,custom/unlock_music=false}] only minecraft:custom/unlock_music