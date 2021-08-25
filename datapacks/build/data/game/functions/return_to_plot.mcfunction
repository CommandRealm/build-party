execute if score $number mode matches 0 run function game:tp_to_sponsor
execute if score $number mode matches 1..2 run function game:tp_to_build
tellraw @s {"text":"Please stay in your building area.","color":"red"}
playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 1