


tag @a remove staff
tag @a[tag=has_test] add staff
tag @a[tag=has_help] add staff
tag @a[tag=has_bld] add staff
tag @a[tag=has_srbld] add staff
tag @a[tag=has_prg] add staff
tag @a[tag=has_srprg] add staff
tag @a[tag=has_lead] add staff
tag @a[tag=has_lead] add staff
tag @a[advancements={minecraft:custom/unlock_prefix=true}] add staff
team join lobby @s
team join fa @s[gamemode=!spectator,scores={sponsor=0}]
team join redstone_inc @s[gamemode=!spectator,scores={sponsor=1}]
team join beetopia @s[gamemode=!spectator,scores={sponsor=7}]
team join the_byte @s[gamemode=!spectator,scores={sponsor=5}]
team join fungi @s[gamemode=!spectator,scores={sponsor=3}]
team join marms_farm @s[gamemode=!spectator,scores={sponsor=2}]
team join throneroom @s[gamemode=!spectator,scores={sponsor=4}]
team join dimension @s[gamemode=!spectator,scores={sponsor=8}]
team join lumber @s[gamemode=!spectator,scores={sponsor=6}]

team join wizardry @s[gamemode=!spectator,scores={sponsor=9}]
team join mechanics @s[gamemode=!spectator,scores={sponsor=10}]
team join ruins @s[gamemode=!spectator,scores={sponsor=11}]
execute unless score $game state matches 1.. if score $time team_swap matches 0 if entity @s[gamemode=!spectator,scores={prefix=0}] run team join test
execute unless score $game state matches 1.. if score $time team_swap matches 0 if entity @s[gamemode=!spectator,scores={prefix=1}] run team join help
execute unless score $game state matches 1.. if score $time team_swap matches 0 if entity @s[gamemode=!spectator,scores={prefix=2}] run team join bld
execute unless score $game state matches 1.. if score $time team_swap matches 0 if entity @s[gamemode=!spectator,scores={prefix=3}] run team join srbld
execute unless score $game state matches 1.. if score $time team_swap matches 0 if entity @s[gamemode=!spectator,scores={prefix=4}] run team join prg
execute unless score $game state matches 1.. if score $time team_swap matches 0 if entity @s[gamemode=!spectator,scores={prefix=5}] run team join srprg
execute unless score $game state matches 1.. if score $time team_swap matches 0 if entity @s[gamemode=!spectator,scores={prefix=6}] run team join manager
execute unless score $game state matches 1.. if score $time team_swap matches 0 if entity @s[gamemode=!spectator,scores={prefix=7}] run team join lead
execute unless score $game state matches 1.. if score $time team_swap matches 0 if entity @s[gamemode=!spectator,scores={prefix=8}] run team join art
execute unless score $game state matches 1.. if score $time team_swap matches 0 if entity @s[gamemode=!spectator,scores={prefix=99}] run team join cr
execute unless score $game state matches 1.. if score $time team_swap matches 0 if entity @s[gamemode=!spectator,scores={prefix=100}] run team join detective

