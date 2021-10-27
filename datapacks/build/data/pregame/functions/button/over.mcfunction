##called when the button cooldown is over

scoreboard players reset $button pregame
setblock 0 69 12 minecraft:stone_button[face=wall,facing=north,powered=false]
particle item stone 0 69.5 12 0.1 0.1 0.1 0.15 5
playsound block.stone.place block @a 0 69 12 1 1