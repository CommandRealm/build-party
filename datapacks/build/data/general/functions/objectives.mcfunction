gamerule doDaylightCycle false
gamerule keepInventory true
gamerule doMobSpawning false
gamerule mobGriefing false
gamerule fallDamage false
team add lobby
team add test
team add help
team add bld
team add prg
team add srbld
team add srprg
team add lead
team modify lobby color yellow
team modify test color yellow
team modify help color yellow
team modify bld color yellow
team modify prg color yellow
team modify srbld color yellow
team modify srprg color yellow
team modify lead color yellow
team modify lobby color yellow
team modify test prefix {"text":"(Tester) ","color":"yellow"}
team modify help prefix {"text":"[Helper] ","color":"gold"}
team modify bld prefix {"text":"{Builder} ","color":"blue"}
team modify prg prefix {"text":"{Programmer} ","color":"red"}
team modify srbld prefix {"text":"{Sr. Builder} ","color":"dark_blue"}
team modify srprg prefix {"text":"{Sr. Programmer} ","color":"dark_red"}
team modify lead prefix [{"text":"{","color":"dark_purple","bold":true},{"text":"Project Lead","bold":false},{"text":"} ","bold":true}]

team add manager
team add art
team add srart
team modify manager color yellow
team modify art color yellow
team modify srart color yellow

team modify art prefix {"text":"{Artist} ","color":"green"}
team modify srart prefix {"text":"{Senior Artist} ","color":"dark_green"}
team modify manager prefix {"text":"{Manager} ","color":"yellow"}

team add cr
team modify cr color yellow
team modify cr prefix [{"text":"{","color":"white","bold":true},{"text":"C","color":"aqua","bold":true},{"text":"R","color":"dark_aqua","bold":true},{"text":"} ","color":"white","bold":true}]


team add detective
team modify detective color yellow
team modify detective prefix [{"text":"{","color":"dark_blue","bold":true},{"text":"Museum Detective","bold":false,"color":"blue"},{"text":"} ","bold":true,"color":"dark_blue"}]

scoreboard objectives add ready dummy
scoreboard objectives add new_player dummy
scoreboard objectives add leave minecraft.custom:leave_game
scoreboard objectives add rc minecraft.used:minecraft.knowledge_book
weather clear 1000000
scoreboard objectives add state dummy
scoreboard players add $game state 0
scoreboard objectives add players_on dummy
scoreboard objectives add players_ready dummy
scoreboard objectives add startup_timer dummy
scoreboard objectives add fake_timer dummy
scoreboard objectives add number dummy
scoreboard players set 20 number 20
scoreboard objectives add alternate_second dummy
scoreboard objectives add mode dummy
scoreboard players add $number mode 0
scoreboard objectives add sponsor dummy
scoreboard players add @a sponsor 0
scoreboard objectives add random dummy
team add building
team add guessing
team add guessed
team modify guessing color yellow
team modify guessed color gold
team modify building color yellow
team modify building prefix [{"text":"(","color":"blue","bold":true},{"text":"✮","bold":false},{"text":") ","bold":true}]
team modify guessing prefix [{"text":"[","color":"yellow","bold":true},{"text":"-","bold":false},{"text":"] ","bold":true}]
team modify guessed prefix [{"text":"{","color":"gold","bold":true},{"text":"✔","bold":false},{"text":"} ","bold":true}]
scoreboard objectives add book_delay dummy
scoreboard objectives add timer dummy
scoreboard objectives add set_timer dummy
scoreboard objectives add cooldown dummy
scoreboard players set $time startup_timer -1
scoreboard objectives add check_tie dummy
scoreboard objectives add switch_mode trigger
scoreboard objectives add guess_view dummy
gamerule sendCommandFeedback false
gamerule commandBlockOutput false
gamerule maxEntityCramming 100
team modify guessing collisionRule never
team modify guessing seeFriendlyInvisibles true
scoreboard objectives add game_timer dummy
scoreboard objectives add set_timer dummy
scoreboard players add $time set_timer 0
execute if score $time set_timer matches 0 run scoreboard players set $time set_timer 1800
team add no_guess
team modify no_guess color gray
team modify no_guess prefix [{"text":"{","color":"dark_gray","bold":true},{"text":"✗","bold":false,"color":"dark_red"},{"text":"} ","bold":true,"color":"dark_gray"}]
gamerule doMobLoot false
team add fa
team modify fa color yellow
team modify fa prefix [{"text":"(","color":"gray","bold":true},{"text":"Free Agent","color":"dark_aqua","bold":false},{"text":") ","color":"gray","bold":true}]
team add the_byte
team modify the_byte color yellow
team modify the_byte prefix [{"text":"(","color":"dark_aqua","bold":true},{"text":"The Byte","color":"white","bold":false},{"text":") ","color":"dark_aqua","bold":true}]
team add beetopia
team modify beetopia color yellow
team modify beetopia prefix [{"text":"(","color":"yellow","bold":true},{"text":"Beetopia","color":"gold","bold":false},{"text":") ","color":"yellow","bold":true}]
team add marms_farm
team modify marms_farm color yellow
team modify marms_farm prefix [{"text":"(","color":"gold","bold":true},{"text":"Marm's Farm","color":"green","bold":false},{"text":") ","color":"gold","bold":true}]
team add dimension
team modify dimension color yellow
team modify dimension prefix [{"text":"(","color":"gold","bold":true},{"text":"Dimension Convention","color":"dark_red","bold":false},{"text":") ","color":"gold","bold":true}]
team add redstone_inc
team modify redstone_inc color yellow
team modify redstone_inc prefix [{"text":"(","color":"gray","bold":true},{"text":"Redstone INC.","color":"red","bold":false},{"text":") ","color":"gray","bold":true}]
team add lumber
team modify lumber color yellow
team modify lumber prefix [{"text":"(","color":"green","bold":true},{"text":"Woody's Lumber","color":"#9f5b1f","bold":false},{"text":") ","color":"green","bold":true}]
team add throneroom
team modify throneroom color yellow
team modify throneroom prefix [{"text":"(","color":"dark_purple","bold":true},{"text":"King & Sons","color":"gold","bold":false},{"text":") ","color":"dark_purple","bold":true}]
team add fungi
team modify fungi color yellow
team modify fungi prefix [{"text":"(","color":"dark_red","bold":true},{"text":"F","color":"red","bold":false},{"text":"u","color":"white","bold":false},{"text":"n","color":"red","bold":false},{"text":" G","color":"white","bold":false},{"text":"u","color":"red","bold":false},{"text":"y","color":"white","bold":false},{"text":" F","color":"red","bold":false},{"text":"u","color":"white","bold":false},{"text":"n","color":"red","bold":false},{"text":"g","color":"white","bold":false},{"text":"i","color":"red","bold":false},{"text":") ","color":"dark_red","bold":true}]

team add wizardry
team modify wizardry color yellow
team modify wizardry prefix [{"text":"(","color":"dark_gray","bold":true},{"text":"Warren's","bold":false,"color":"#92763b"},{"text":" Wizardry","color":"#5c3114","bold":false},{"text":") ","color":"dark_gray","bold":true}]

team add mechanics
team modify mechanics color yellow
team modify mechanics prefix [{"text":"(","color":"gray","bold":true},{"text":"Ha","color":"white","bold":false},{"text":"z","color":"#76a391","bold":false},{"text":"ardous","color":"white","bold":false},{"text":" Mechanics","color":"#9b6e5e","bold":false},{"text":") ","color":"gray","bold":true}]

team add ruins
team modify ruins color yellow
team modify ruins prefix [{"text":"(","color":"yellow","bold":true},{"text":"Ralph's ","color":"gold","bold":false},{"text":"Ruins","color":"gray","bold":false},{"text":") ","color":"yellow","bold":true}]


scoreboard objectives add fly minecraft.custom:minecraft.aviate_one_cm
scoreboard objectives add drop_book minecraft.dropped:minecraft.writable_book
scoreboard objectives add o_book trigger
scoreboard objectives add v_theme_1 dummy
scoreboard objectives add v_theme_2 dummy
scoreboard objectives add v_theme_3 dummy
scoreboard objectives add theme_results dummy
scoreboard objectives add hat dummy
scoreboard objectives add player_hat_a dummy
scoreboard objectives add adv_jukebox minecraft.used:minecraft.jukebox
scoreboard objectives add adv_wolf minecraft.used:minecraft.wolf_spawn_egg
scoreboard objectives add resetting dummy
scoreboard objectives add music dummy
scoreboard objectives add set_battle_timer dummy
scoreboard players add $time set_battle_timer 0
execute if score $time set_battle_timer matches 0 run scoreboard players set $time set_battle_timer 2400
scoreboard objectives add break_out dummy
scoreboard objectives add intro_walk minecraft.custom:minecraft.walk_one_cm
scoreboard objectives add intro_jump minecraft.custom:minecraft.jump
scoreboard objectives add intro_sprint minecraft.custom:minecraft.sprint_one_cm
scoreboard objectives add intro_crouch minecraft.custom:minecraft.sneak_time
scoreboard objectives add intro dummy
scoreboard objectives add secret_entrance dummy
fill -12 65 15 12 110 39 air
kill @e[x=-12,y=65,z=15,dx=24,dy=50,dz=24,type=item]
clone -38 6 19 -14 20 43 -12 65 15
kill @e[type=armor_stand,tag=builder_head]
summon armor_stand -3 65.80 13.7 {Tags:["builder_head"],NoGravity:1b,Invisible:1b,Invulnerable:1b,DisabledSlots:2039583,Rotation:[180.0f,0.0f],ArmorItems:[{},{},{},{}]}
summon armor_stand 3 65.80 13.7 {Tags:["builder_head"],NoGravity:1b,Invisible:1b,Invulnerable:1b,DisabledSlots:2039583,Rotation:[180.0f,0.0f],ArmorItems:[{},{},{},{}]}
gamerule doTileDrops false
team add collision
team join collision @e[type=slime]
team modify collision collisionRule never
gamerule fireDamage false
scoreboard objectives add options_tp dummy
kill @e[tag=lobby_options_tp]
summon area_effect_cloud -7 68.5 11 {Tags:["lobby_options_tp"],Duration:1000000}
summon area_effect_cloud 7 68.5 11 {Tags:["lobby_options_tp"],Duration:1000000}
scoreboard players set @e[tag=lobby_options_tp] options_tp 0
kill @e[tag=spin]
summon area_effect_cloud 0 6 0 {Tags:["spin"],Duration:1000000}

kill @e[tag=lobby_nameplate]
summon area_effect_cloud 7 69.5 11 {Duration:1000000,CustomNameVisible:1b,CustomName:'{"text":"Options Room","color":"#ffc868","underlined":true}',Tags:["lobby_nameplate"]}
summon area_effect_cloud -7 69.5 11 {Duration:1000000,CustomNameVisible:1b,CustomName:'{"text":"Options Room","color":"#ffc868","underlined":true}',Tags:["lobby_nameplate"]}
summon area_effect_cloud 2 67.5 13 {Duration:1000000,CustomNameVisible:1b,CustomName:'[{"text":"Menu","underlined":true,"color":"blue"}]',Tags:["lobby_nameplate"]}
summon area_effect_cloud -2 67.5 13 {Duration:1000000,CustomNameVisible:1b,CustomName:'[{"text":"Menu","underlined":true,"color":"blue"}]',Tags:["lobby_nameplate"]}
scoreboard objectives add team_swap dummy
scoreboard players add $time team_swap 0
scoreboard objectives add limited_guesses dummy
scoreboard players add $number limited_guesses 0
scoreboard players set $minute number 1200
scoreboard objectives add team dummy
team add blue
team add orange
team add green
team add pink
team add gray
team modify blue color aqua
team modify orange color gold
team modify green color green
team modify pink color light_purple
team modify gray color dark_gray
team modify blue prefix [{"text":"(","color":"#476781","bold":true},{"text":"Blue","color":"aqua","bold":false},{"text":") ","color":"#476781","bold":true}]
team modify orange prefix [{"text":"(","color":"gold","bold":true},{"text":"Orange","color":"#ff4e00","bold":false},{"text":") ","color":"gold","bold":true}]
team modify green prefix [{"text":"(","color":"#09b500","bold":true},{"text":"Green","color":"green","bold":false},{"text":") ","color":"#09b500","bold":true}]
team modify pink prefix [{"text":"(","color":"#dd9ddc","bold":true},{"text":"Pink","color":"light_purple","bold":false},{"text":") ","color":"#dd9ddc","bold":true}]
team modify gray prefix [{"text":"(","color":"#8c8c8c","bold":true},{"text":"Gray","color":"dark_gray","bold":false},{"text":") ","color":"#8c8c8c","bold":true}]
scoreboard objectives add check_teams dummy
kill @e[type=area_effect_cloud,tag=vending_machine]

summon area_effect_cloud 25 74 59 {Tags:["vending_machine"],Duration:1000000}
summon area_effect_cloud -25 74 59 {Tags:["vending_machine"],Duration:1000000}
summon area_effect_cloud -25 89 59 {Tags:["vending_machine"],Duration:1000000}
summon area_effect_cloud -26 89 35 {Tags:["vending_machine"],Duration:1000000}
summon area_effect_cloud -36 89 35 {Tags:["vending_machine"],Duration:1000000}
summon area_effect_cloud 25 89 60 {Tags:["vending_machine"],Duration:1000000}
summon area_effect_cloud 26 89 35 {Tags:["vending_machine"],Duration:1000000}
summon area_effect_cloud 36 89 35 {Tags:["vending_machine"],Duration:1000000}
scoreboard objectives add vending_machine dummy
scoreboard players add @e[tag=vending_machine] vending_machine 0
scoreboard objectives add hunger food
scoreboard objectives add r_limit dummy
scoreboard objectives add open_e_chest minecraft.custom:minecraft.open_enderchest
scoreboard objectives add menu dummy
scoreboard objectives add click_0 dummy
scoreboard objectives add click_1 dummy
scoreboard objectives add click_2 dummy
scoreboard objectives add click_3 dummy
scoreboard objectives add click_4 dummy
scoreboard objectives add click_5 dummy
scoreboard objectives add click_6 dummy
scoreboard objectives add click_7 dummy
scoreboard objectives add click_8 dummy
scoreboard objectives add click_9 dummy
scoreboard objectives add click_10 dummy
scoreboard objectives add click_11 dummy
scoreboard objectives add click_12 dummy
scoreboard objectives add break_portal dummy
scoreboard objectives add entities dummy
scoreboard objectives add use_eye minecraft.used:minecraft.ender_eye
scoreboard objectives add bossbar_time dummy
scoreboard objectives add update_bossbar dummy

scoreboard objectives add in_game dummy

team add spectator
team modify spectator color gray
team modify spectator prefix [{"text":"[","bold":true,"color":"white"},{"text":"SPEC","color":"gray","bold":false},{"text":"] ","bold":true,"color":"white"}]

bossbar remove lobby
bossbar add lobby [{"text":"- ","bold":true,"color":"yellow"},{"text":"BUILD "},{"text":"PARTY","color":"gold"},{"text":" - ","bold":true,"color":"gold"},{"bold":false,"text":"By the ","color":"white","obfuscated":false,"underlined":false,"extra":[{"text":"Command","color":"aqua","bold":true,"obfuscated":false,"extra":[{"text":" Realm","color":"dark_aqua","extra":[{"text":" Team","bold":false,"color":"white"}]}]}]}]
bossbar set minecraft:lobby color yellow
bossbar set minecraft:lobby max 1
bossbar set minecraft:lobby value 1
bossbar set minecraft:lobby players @a[tag=!playing]
scoreboard objectives add stats_wins dummy
scoreboard objectives add stats_played dummy
scoreboard objectives add stats_guessing dummy
scoreboard objectives add stats_guessed dummy
scoreboard objectives add stats_p_given dummy
scoreboard objectives add stats_p_taken dummy
scoreboard objectives add check_sponsors dummy
scoreboard objectives add rainbow_hat dummy
team modify guessed displayName {"text":"Guessed","color":"gold"}
team modify guessing displayName {"text":"Guessing","color":"yellow"}
team modify no_guess displayName {"text":"No Guess","color":"red"}
team modify building displayName {"text":"Building","color":"blue"}
team modify spectator displayName {"text":"Spectator","color":"white"}
gamerule reducedDebugInfo true

scoreboard objectives add pregame dummy

summon minecraft:area_effect_cloud 0 70 13 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["start_button_text","lobby_nameplate"],CustomName:'[{"text":"- ","color":"gray"},{"text":"✦ ","color":"gold"},{"text":"Start","color":"yellow","bold":true},{"text":" ✦ ","color":"gold"},{"text":" -","color":"gray"}]',CustomNameVisible:1b}

scoreboard objectives add game dummy
scoreboard objectives add drop_ready_book minecraft.dropped:knowledge_book

scoreboard objectives add guess_sounds dummy

scoreboard objectives add prefix dummy