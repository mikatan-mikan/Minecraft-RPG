execute store result score $str_newyear_2023_1 spawn_count if entity @e[tag=field_str_newyear_2023_1]
execute if score $str_newyear_2023_1 spawn_count matches ..1 as @e[tag=field_str_newyear_2023_ar_1] at @s run data merge storage mikatanserver:tagbox {"tag":["field_str_newyear_2023_1"]}
execute if score $str_newyear_2023_1 spawn_count matches ..1 as @e[tag=field_str_newyear_2023_ar_1] at @s run function mikatanserver:adddim/area/newyear_2023/mob/strong_mob/spawn/main
execute store result score $str_newyear_2023_2 spawn_count if entity @e[tag=field_str_newyear_2023_2]
execute if score $str_newyear_2023_2 spawn_count matches ..1 as @e[tag=field_str_newyear_2023_ar_2] at @s run data merge storage mikatanserver:tagbox {"tag":["field_str_newyear_2023_2"]}
execute if score $str_newyear_2023_2 spawn_count matches ..1 as @e[tag=field_str_newyear_2023_ar_2] at @s run function mikatanserver:adddim/area/newyear_2023/mob/strong_mob/spawn/main
execute store result score $str_newyear_2023_3 spawn_count if entity @e[tag=field_str_newyear_2023_3]
execute if score $str_newyear_2023_3 spawn_count matches ..1 as @e[tag=field_str_newyear_2023_ar_3] at @s run data merge storage mikatanserver:tagbox {"tag":["field_str_newyear_2023_3"]}
execute if score $str_newyear_2023_3 spawn_count matches ..1 as @e[tag=field_str_newyear_2023_ar_3] at @s run function mikatanserver:adddim/area/newyear_2023/mob/strong_mob/spawn/main
execute store result score $str_newyear_2023_4 spawn_count if entity @e[tag=field_str_newyear_2023_4]
execute if score $str_newyear_2023_4 spawn_count matches ..1 as @e[tag=field_str_newyear_2023_ar_4] at @s run data merge storage mikatanserver:tagbox {"tag":["field_str_newyear_2023_4"]}
execute if score $str_newyear_2023_4 spawn_count matches ..1 as @e[tag=field_str_newyear_2023_ar_4] at @s run function mikatanserver:adddim/area/newyear_2023/mob/strong_mob/spawn/main
execute store result score $str_newyear_2023_5 spawn_count if entity @e[tag=field_str_newyear_2023_5]
execute if score $str_newyear_2023_5 spawn_count matches ..1 as @e[tag=field_str_newyear_2023_ar_5] at @s run data merge storage mikatanserver:tagbox {"tag":["field_str_newyear_2023_5"]}
execute if score $str_newyear_2023_5 spawn_count matches ..1 as @e[tag=field_str_newyear_2023_ar_5] at @s run function mikatanserver:adddim/area/newyear_2023/mob/strong_mob/spawn/main
execute store result score $str_newyear_2023_6 spawn_count if entity @e[tag=field_str_newyear_2023_6]
execute if score $str_newyear_2023_6 spawn_count matches ..1 as @e[tag=field_str_newyear_2023_ar_6] at @s run data merge storage mikatanserver:tagbox {"tag":["field_str_newyear_2023_6"]}
execute if score $str_newyear_2023_6 spawn_count matches ..1 as @e[tag=field_str_newyear_2023_ar_6] at @s run function mikatanserver:adddim/area/newyear_2023/mob/strong_mob/spawn/main

scoreboard players reset $str_newyear_2023_1 spawn_count
scoreboard players reset $str_newyear_2023_2 spawn_count
scoreboard players reset $str_newyear_2023_3 spawn_count
scoreboard players reset $str_newyear_2023_4 spawn_count
scoreboard players reset $str_newyear_2023_5 spawn_count
scoreboard players reset $str_newyear_2023_6 spawn_count