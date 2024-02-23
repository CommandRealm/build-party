execute if entity @a[tag=looking_for_movement] run function lobby:intro/looking_for_movement
execute if entity @a[tag=intro_in_progress] run function lobby:intro/active_intro
execute if block 19 67 -19 stone_pressure_plate[powered=true] run function lobby:secret/open
execute if score $time secret_entrance matches 1.. run function lobby:secret/active
execute if entity @a[scores={secret_entrance=1..}] run function lobby:secret/exit/active
execute as @a[tag=!playing,x=-7,y=61,z=-7,distance=..1] at @s run function lobby:secret/exit/start
execute as @a[tag=!playing] at @s at @s[y=85,distance=..10] run effect clear @s levitation
execute as @e[tag=model,type=armor_stand] at @s run tp @s ~ ~ ~ ~5 ~
effect give @a[gamemode=adventure] weakness 2 255 true

execute as @e[tag=spin,type=area_effect_cloud] at @s run tp @s ~ ~ ~ ~15 ~
execute at @e[tag=lobby_options_tp,type=area_effect_cloud] run particle wax_on ~ 67.75 ~ 0.05 1 0.05 0.25 3
execute as @e[tag=spin] at @s positioned as @e[tag=lobby_options_tp,x=7,y=68,z=11,distance=..3] run particle firework ^ ^ ^0.5 0 0 0 0 1
execute as @e[tag=spin] at @s positioned as @e[tag=lobby_options_tp,x=-7,y=68,z=11,distance=..3] run particle firework ^ ^ ^-0.5 0 0 0 0 1
execute as @e[tag=lobby_options_tp,scores={options_tp=0}] at @s at @s[y=67.0,distance=..1] run scoreboard players set @s options_tp 1
execute as @e[tag=lobby_options_tp,scores={options_tp=1}] at @s at @s[y=71.0,distance=..1] run scoreboard players set @s options_tp 0
execute as @e[tag=lobby_options_tp,scores={options_tp=0}] at @s run tp @s ~ ~-0.05 ~
execute as @e[tag=lobby_options_tp,scores={options_tp=1}] at @s run tp @s ~ ~0.025 ~
execute at @e[tag=lobby_options_tp,type=area_effect_cloud] positioned ~ 68 ~ as @a[distance=..0.5] run function lobby:options_room_tp
scoreboard players remove $time team_swap 1
execute if score $time team_swap matches 50 as @a[tag=!playing,tag=staff,team=!blue,team=!orange,team=!green,team=!pink,team=!gray,gamemode=!spectator] at @s run function general:rank
execute if score $time team_swap matches ..0 as @a[tag=!playing,tag=staff,team=!blue,team=!orange,team=!green,team=!pink,team=!gray,gamemode=!spectator] at @s run function general:rank
execute if score $time team_swap matches ..0 run scoreboard players set $time team_swap 100
execute if score $number team matches 2.. as @a[tag=!playing] at @s unless entity @s[nbt={Inventory:[{Slot:8b,id:"minecraft:written_book"}]}] run function lobby:get_team_book

execute as @a[tag=!playing,scores={select_team=1..}] at @s run function lobby:teams/select_team

execute as @e[type=area_effect_cloud,tag=vending_machine,scores={vending_machine=0}] at @s if block ~ ~ ~ stone_button[powered=true] run function lobby:vending_machine/pressed
scoreboard players remove @e[type=area_effect_cloud,tag=vending_machine,scores={vending_machine=1..}] vending_machine 1
clear @a[tag=!playing] glass_bottle

execute if entity @a[tag=!playing,nbt={Inventory:[{tag:{vending_machine:1}}]}] run function lobby:vending_machine/hunger
effect give @a[tag=!playing,gamemode=adventure] resistance 1 255 true

function credits:pl
function credits:hippeh
function credits:regs
function credits:j70
function credits:focii
execute if score $time startup_timer matches -1 as @a at @s if entity @e[tag=show_details,distance=..8] anchored eyes unless score $time startup_timer matches 0.. run function lobby:start_raycast
execute as @a[tag=!playing,scores={open_e_chest=1..}] at @s run function chest_menu:start
execute if entity @a[x=0,y=67,z=13,distance=..7,tag=!playing,gamemode=adventure] run function chest_menu:menus

execute if score $game state matches 1.. run function lobby:game_active

execute at @e[nbt={Item:{tag:{echest:1}}},type=item] as @a[distance=..7.5] at @s run function chest_menu:restart_screen
execute as @a[x=0,y=67,z=13,distance=..7,tag=!playing,nbt={EnderItems:[{tag:{no_echest:1}}]}] at @s run function chest_menu:restart_screen

execute if entity @a[tag=replace_hat,tag=!playing] run function lobby:hat/active

advancement grant @a[x=-1,y=73,z=57,dx=2,dy=3] only advancements:custom/visit_museum
advancement grant @a[x=-33,y=73,z=54,dx=4,dy=8,dz=4] only advancements:custom/visit_dragon
advancement grant @a[x=27,y=88,z=47,dx=8,dz=3,dy=3] only advancements:custom/visit_cr_painting
advancement grant @a[x=-24,y=67,z=-9,dx=0,dy=1] only advancements:custom/visit_bus
advancement grant @a[x=-48,y=67,z=7,dx=0,dy=1] only advancements:custom/visit_truck
advancement grant @a[x=46,y=66,z=-9,dz=18,dx=6,dy=10] only advancements:custom/find_cr
advancement grant @a[x=19,y=63,z=-19,dx=0] only advancements:custom/visit_secret
advancement grant @a[advancements={advancements:custom/visit_museum=true,advancements:custom/use_vending_machine=true,advancements:custom/visit_dragon=true,advancements:custom/visit_cr_painting=true,advancements:custom/visit_bus=true,advancements:custom/visit_truck=true,advancements:custom/find_cr=true,advancements:custom/check_out_socials=true,advancements:custom/visit_secret=true,advancements:custom/unlock_prefix=false}] only advancements:custom/unlock_prefix
execute if entity @a[advancements={advancements:completionist/completionist=true},tag=!playing] run function completionist:completionist_helix

##Dropping the ready book
execute as @a[tag=!playing,gamemode=adventure,scores={drop_ready_book=1..}] at @s run function lobby:drop_ready_book


# called to teleport people who go down the tunnels
execute as @a[x=81,y=66,z=-12,dx=10,dy=10,dz=24,gamemode=adventure] at @s run function lobby:tunnel/side_1

execute as @a[x=-91,y=66,z=-12,dx=10,dy=10,dz=24,gamemode=adventure] at @s run function lobby:tunnel/side_2


# if we're too high in the lobby building area
execute as @a[x=-13,y=80,z=14,dx=26,dy=15,dz=26,gamemode=adventure] at @s run function lobby:too_high

# traffic timers
scoreboard players add $traffic lobby 1

#
execute if score $traffic lobby matches 1 run function lobby:signals/crosswalk_gray
execute if score $traffic lobby matches 40 run function lobby:signals/green
execute if score $traffic lobby matches 160 run function lobby:signals/yellow
execute if score $traffic lobby matches 200 run function lobby:signals/red
execute if score $traffic lobby matches 260 run function lobby:signals/crosswalk_green


scoreboard players add $time credits 1
execute if score $time credits matches 140.. run function credits:cycle_armor_stand