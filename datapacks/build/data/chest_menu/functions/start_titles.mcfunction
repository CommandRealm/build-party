##Starting the ender chest titles screen

##Clear Function
function chest_menu:clear

##Setting screen
scoreboard players set @s menu 99


##Middle row
item replace entity @s[tag=has_test] enderchest.0 with book{echest:1, HideFlags: 63, display: {Name: '[{"text":"(Tester)","bold":false,"italic":false,"color":"yellow"}]'}}
item replace entity @s[tag=has_help] enderchest.1 with book{echest:1, HideFlags: 63, display: {Name: '[{"text":"[Helper]","bold":false,"italic":false,"color":"gold"}]'}}
item replace entity @s[tag=has_bld] enderchest.2 with book{echest:1, HideFlags: 63, display: {Name: '[{"text":"{Builder}","bold":false,"italic":false,"color":"blue"}]'}}
item replace entity @s[tag=has_srbld] enderchest.3 with book{echest:1, HideFlags: 63, display: {Name: '[{"text":"{Sr. Builder}","bold":false,"italic":false,"color":"dark_blue"}]'}}
item replace entity @s[tag=has_prg] enderchest.4 with book{echest:1, HideFlags: 63, display: {Name: '[{"text":"{Programmer}","bold":false,"italic":false,"color":"red"}]'}}
item replace entity @s[tag=has_srprg] enderchest.5 with book{echest:1, HideFlags: 63, display: {Name: '[{"text":"{Sr. Programmer}","bold":false,"italic":false,"color":"dark_red"}]'}}
item replace entity @s[tag=has_manager] enderchest.6 with book{echest:1, HideFlags: 63, display: {Name: '[{"text":"{Manager}","bold":false,"italic":false,"color":"yellow"}]'}}
item replace entity @s[tag=has_lead] enderchest.7 with book{echest:1, HideFlags: 63, display: {Name: '[{"text":"{","color":"dark_purple","bold":true,"italic":false},{"text":"Project Lead","bold":false},{"text":"}","bold":true}]'}}
item replace entity @s[tag=has_cr] enderchest.8 with book{echest:1, HideFlags: 63, display: {Name: '[{"text":"{","color":"white","bold":true,"italic":false},{"text":"C","color":"aqua","bold":true},{"text":"R","color":"dark_aqua","bold":true},{"text":"}","color":"white","bold":true}]'}}
item replace entity @s[tag=has_art] enderchest.9 with book{echest:1, HideFlags: 63, display: {Name: '[{"text":"{Artist}","bold":false,"italic":false,"color":"green"}]'}}

item replace entity @s[scores={prefix=0}] enderchest.0 with written_book{invalid_click: 1, echest:1, HideFlags: 63, display: {Name: '[{"text":"(Tester)","bold":false,"italic":false,"color":"yellow"}]'}}
item replace entity @s[scores={prefix=1}] enderchest.1 with written_book{invalid_click: 1, echest:1, HideFlags: 63, display: {Name: '[{"text":"[Helper]","bold":false,"italic":false,"color":"gold"}]'}}
item replace entity @s[scores={prefix=2}] enderchest.2 with written_book{invalid_click: 1, echest:1, HideFlags: 63, display: {Name: '[{"text":"{Builder}","bold":false,"italic":false,"color":"blue"}]'}}
item replace entity @s[scores={prefix=3}] enderchest.3 with written_book{invalid_click: 1, echest:1, HideFlags: 63, display: {Name: '[{"text":"{Sr. Builder}","bold":false,"italic":false,"color":"dark_blue"}]'}}
item replace entity @s[scores={prefix=4}] enderchest.4 with written_book{invalid_click: 1, echest:1, HideFlags: 63, display: {Name: '[{"text":"{Programmer}","bold":false,"italic":false,"color":"red"}]'}}
item replace entity @s[scores={prefix=5}] enderchest.5 with written_book{invalid_click: 1, echest:1, HideFlags: 63, display: {Name: '[{"text":"{Sr. Programmer}","bold":false,"italic":false,"color":"dark_red"}]'}}
item replace entity @s[scores={prefix=6}] enderchest.6 with written_book{invalid_click: 1, echest:1, HideFlags: 63, display: {Name: '[{"text":"{Manager}","bold":false,"italic":false,"color":"yellow"}]'}}
item replace entity @s[scores={prefix=7}] enderchest.7 with written_book{invalid_click: 1, echest:1, HideFlags: 63, display: {Name: '[{"text":"{","color":"dark_purple","bold":true,"italic":false},{"text":"Project Lead","bold":false},{"text":"}","bold":true}]'}}
item replace entity @s[scores={prefix=99}] enderchest.8 with written_book{invalid_click: 1, echest:1, HideFlags: 63, display: {Name: '[{"text":"{","color":"white","bold":true,"italic":false},{"text":"C","color":"aqua","bold":true},{"text":"R","color":"dark_aqua","bold":true},{"text":"}","color":"white","bold":true}]'}}
item replace entity @s[scores={prefix=8}] enderchest.9 with written_book{invalid_click: 1, echest:1, HideFlags: 63, display: {Name: '[{"text":"{Artist}","bold":false,"italic":false,"color":"green"}]'}}

item replace entity @s enderchest.18 with barrier{echest:1, HideFlags: 63, display: {Name: '[{"text":"Back","bold":true,"italic":false,"color":"#ff0000"}]'}}

playsound minecraft:ui.button.click master @s[scores={click_0=1..}] ~ ~ ~ 1000000 1


