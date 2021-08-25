kill @e[tag=j70]
kill @e[tag=j70_helmet]
scoreboard objectives add j70_arm dummy
summon minecraft:armor_stand -0.75 74.5 69 {Tags:["credits","j70","show_details"],NoBasePlate:1,ShowArms:1,Rotation:[135.0f,0.0f],NoGravity:1,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:"J70"}}],Pose:{RightArm:[0.0f,0.0f,0.0f],RightLeg:[0.0f,0.0f,0.0f],LeftArm:[0.0f,0.0f,0.0f],LeftLeg:[0.0f,0.0f,0.0f],Head:[0.0f,30.0f,0.0f],Body:[0.0f,0.0f,0.0f]},Marker:1}
summon armor_stand -1.35 75.286 70.0 {Tags:["j70_helmet"],ArmorItems:[{},{},{},{id:"minecraft:turtle_helmet",Count:1b}],Invisible:1b,NoGravity:1b,Marker:1b,Small:1b}
data merge entity @e[tag=j70,limit=1] {Pose:{RightArm:[-10.0f,0.0f,35.0f],LeftArm:[-180.0f,20.0f,45.0f]}}
replaceitem entity @e[tag=j70] armor.feet leather_boots{display:{color:11403519}}
replaceitem entity @e[tag=j70] armor.chest leather_chestplate{display:{color:11403519}}
replaceitem entity @e[tag=j70] armor.legs golden_leggings