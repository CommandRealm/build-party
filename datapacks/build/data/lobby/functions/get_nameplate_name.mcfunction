execute if entity @p[tag=test,tag=!playing,x=0,y=66,z=0,distance=..450] run data merge entity @s {CustomName:'{"text":"(Tester)","color":"yellow"}',CustomNameVisible:1b}
execute if entity @p[tag=test,tag=!playing,x=0,y=66,z=0,distance=..450] run tag @s add show_test
execute if entity @p[tag=help,tag=!playing,x=0,y=66,z=0,distance=..450] run data merge entity @s {CustomName:'{"text":"[Helper]","color":"gold"}',CustomNameVisible:1b}
execute if entity @p[tag=help,tag=!playing,x=0,y=66,z=0,distance=..450] run tag @s add show_help
execute if entity @p[tag=bld,tag=!playing,x=0,y=66,z=0,distance=..450] run data merge entity @s {CustomName:'{"text":"{Builder}","color":"blue"}',CustomNameVisible:1b}
execute if entity @p[tag=bld,tag=!playing,x=0,y=66,z=0,distance=..450] run tag @s add show_bld
execute if entity @p[tag=prg,tag=!playing,x=0,y=66,z=0,distance=..450] run data merge entity @s {CustomName:'{"text":"{Programmer}","color":"red"}',CustomNameVisible:1b}
execute if entity @p[tag=prg,tag=!playing,x=0,y=66,z=0,distance=..450] run tag @s add show_prg
execute if entity @p[tag=srbld,tag=!playing,x=0,y=66,z=0,distance=..450] run data merge entity @s {CustomName:'{"text":"{Sr. Builder}","color":"dark_blue"}',CustomNameVisible:1b}
execute if entity @p[tag=srbld,tag=!playing,x=0,y=66,z=0,distance=..450] run tag @s add show_srbld
execute if entity @p[tag=srprg,tag=!playing,x=0,y=66,z=0,distance=..450] run data merge entity @s {CustomName:'{"text":"{Sr. Programmer}","color":"dark_red"}',CustomNameVisible:1b}
execute if entity @p[tag=lead,tag=!playing,x=0,y=66,z=0,distance=..450] run tag @s add show_lead
execute if entity @p[tag=lead,tag=!playing,x=0,y=66,z=0,distance=..450] at @s run data merge entity @s {CustomName:'[{"text":"{","color":"dark_purple","bold":true},{"text":"Project Lead","bold":false},{"text":"}","bold":true}]',CustomNameVisible:1b}
tag @s add get_nameplate_name