
setblock 4 70 9 air
setblock 4 70 9 minecraft:player_wall_head[facing=north]{SkullOwner:{Id:[I;1953628742,587091780,-1907720284,1238210424],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjA0OGNjMGRlZTA5NWJlNTgzOWZkZjJmN2QzODI1NTZjMDBjNjg2YzdlYjRiM2M2OTBiZTRkZjAyZjIxMmFhZCJ9fX0="}]}}}


setblock -4 70 -9 air
setblock -4 70 -9 minecraft:player_wall_head[facing=south]{SkullOwner:{Id:[I;1953628742,587091780,-1907720284,1238210424],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjA0OGNjMGRlZTA5NWJlNTgzOWZkZjJmN2QzODI1NTZjMDBjNjg2YzdlYjRiM2M2OTBiZTRkZjAyZjIxMmFhZCJ9fX0="}]}}}


# resetting timer
scoreboard players set $traffic lobby -200

# sound
playsound minecraft:block.note_block.harp master @a 4 70 9 0.015 1.25
playsound minecraft:block.note_block.harp master @a 4 70 9 0.015 1.25