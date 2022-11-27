execute store result score $cave_zombie spawn_count if entity @e[tag=field_cave_high_zombie]
execute if score $cave_zombie spawn_count matches ..1 run data merge storage mikatanserver:tagbox {"tag":["field_cave_high_zombie"]}
execute if score $cave_zombie spawn_count matches ..1 in mikatanserver:dungeon positioned 1187.5 180 811.5 run function mikatanserver:adddim/area/cave/mob/high_zombie/spawn/main

#scoreboard players reset $cave_zombie spawn_count