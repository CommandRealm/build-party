execute if score $number mode matches 0 run function game:guess/main
execute if score $number mode matches 1 run function game:battle/main
execute as @a[tag=builder] at @s as @e[type=!player,type=!area_effect_cloud,type=!armor_stand,distance=..10,type=!item_frame,type=!glow_item_frame,type=!item,type=!arrow,type=!minecart,type=!boat,type=!chest_minecart,type=!furnace_minecart,type=!hopper_minecart,type=!painting,type=!experience_bottle,type=!experience_orb,type=!egg,type=!falling_block,type=!firework_rocket,type=!spectral_arrow,type=!spawner_minecart,type=!trident,tag=!live] at @s unless entity @s[nbt={NoAI:1b}] run tp @s ~ ~ ~ facing entity @p[tag=builder]
execute as @a[tag=builder] at @s as @e[type=item,distance=..100] at @s run data merge entity @s {Age:-10000}
execute as @a[tag=builder] at @s as @e[type=!player,type=!area_effect_cloud,type=!armor_stand,type=!item,type=!arrow,distance=..10,type=!item_frame,type=!glow_item_frame,type=!minecart,type=!boat,type=!chest_minecart,type=!furnace_minecart,type=!hopper_minecart,type=!painting,type=!experience_bottle,type=!experience_orb,type=!egg,type=!falling_block,type=!firework_rocket,type=!spectral_arrow,type=!spawner_minecart,type=!trident] run data merge entity @s {NoAI:1b,Invulnerable:1b,PersistenceRequired:1b}
kill @e[type=minecraft:potion]
kill @e[type=minecraft:ender_pearl]
execute as @a[tag=playing,tag=builder] at @s store result score @s break_portal run fill ~2 ~2 ~2 ~-2 ~-2 ~-2 air replace nether_portal
execute as @a[tag=playing,scores={break_portal=1..}] at @s run function game:break_portal
execute as @a[tag=playing,tag=builder,scores={use_eye=1..}] at @s run function game:use_eye
execute if entity @a[tag=playing,advancements={inventory_changed=true}] run function game:check_inventory

kill @e[type=firework_rocket]
kill @e[type=item,nbt={Item:{id:"minecraft:firework_rocket"}}]
execute as @a[nbt={Dimension:"minecraft:nether"}] run function game:leave_overworld
execute as @a[nbt={Dimension:"minecraft:end"}] run function game:leave_overworld
execute as @a[scores={fly=1..},tag=playing] at @s run function game:invalid_item
effect clear @a[tag=playing] speed
execute as @a[nbt={RootVehicle:{Entity:{id:"minecraft:horse"}}}] at @s run kill @e[type=horse,distance=..2]
execute as @a[nbt={RootVehicle:{Entity:{id:"minecraft:donkey"}}}] at @s run kill @e[type=donkey,distance=..2]
execute as @a[nbt={RootVehicle:{Entity:{id:"minecraft:mule"}}}] at @s run kill @e[type=mule,distance=..2]
execute as @a[nbt={RootVehicle:{Entity:{id:"minecraft:llama"}}}] at @s run kill @e[type=mule,distance=..2]
execute as @a[nbt={RootVehicle:{Entity:{id:"minecraft:strider"}}}] at @s run kill @e[type=mule,distance=..2]
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