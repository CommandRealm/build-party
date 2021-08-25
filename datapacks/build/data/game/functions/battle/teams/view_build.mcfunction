execute if entity @a[tag=show_build,tag=playing,team=blue] run tag @a[tag=playing,team=blue] add show_build
execute if entity @a[tag=show_build,tag=playing,team=orange] run tag @a[tag=playing,team=orange] add show_build
execute if entity @a[tag=show_build,tag=playing,team=green] run tag @a[tag=playing,team=green] add show_build
execute if entity @a[tag=show_build,tag=playing,team=pink] run tag @a[tag=playing,team=pink] add show_build
execute if entity @a[tag=show_build,tag=playing,team=gray] run tag @a[tag=playing,team=gray] add show_build

execute if entity @a[tag=show_build,tag=playing,team=blue] run title @a[tag=playing] title [{"text":"Blue team's","color":"aqua"}]
execute if entity @a[tag=show_build,tag=playing,team=orange] run title @a[tag=playing] title [{"text":"Orange team's","color":"#ff4e00"}]
execute if entity @a[tag=show_build,tag=playing,team=green] run title @a[tag=playing] title [{"text":"Green team's","color":"green"}]
execute if entity @a[tag=show_build,tag=playing,team=pink] run title @a[tag=playing] title [{"text":"Pink team's","color":"light_purple"}]
execute if entity @a[tag=show_build,tag=playing,team=gray] run title @a[tag=playing] title [{"text":"Gray team's","color":"dark_gray"}]