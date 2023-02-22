execute store result score $undine_main1 spawn_count if entity @e[tag=field_undine_main_1]
execute if score $undine_main1 spawn_count matches ..1 as @e[tag=field_undine_main_ar_1] at @s run data merge storage mikatanserver:tagbox {"tag":["field_undine_main_1"]}
execute if score $undine_main1 spawn_count matches ..1 as @e[tag=field_undine_main_ar_1] at @s run function mikatanserver:adddim/area/undine/mob/main/spawn/main
execute store result score $undine_main2 spawn_count if entity @e[tag=field_undine_main_2]
execute if score $undine_main2 spawn_count matches ..1 as @e[tag=field_undine_main_ar_2] at @s run data merge storage mikatanserver:tagbox {"tag":["field_undine_main_2"]}
execute if score $undine_main2 spawn_count matches ..1 as @e[tag=field_undine_main_ar_2] at @s run function mikatanserver:adddim/area/undine/mob/main/spawn/main
execute store result score $undine_main3 spawn_count if entity @e[tag=field_undine_main_3]
execute if score $undine_main3 spawn_count matches ..1 as @e[tag=field_undine_main_ar_3] at @s run data merge storage mikatanserver:tagbox {"tag":["field_undine_main_3"]}
execute if score $undine_main3 spawn_count matches ..1 as @e[tag=field_undine_main_ar_3] at @s run function mikatanserver:adddim/area/undine/mob/main/spawn/main
execute store result score $undine_main4 spawn_count if entity @e[tag=field_undine_main_4]
execute if score $undine_main4 spawn_count matches ..1 as @e[tag=field_undine_main_ar_4] at @s run data merge storage mikatanserver:tagbox {"tag":["field_undine_main_4"]}
execute if score $undine_main4 spawn_count matches ..1 as @e[tag=field_undine_main_ar_4] at @s run function mikatanserver:adddim/area/undine/mob/main/spawn/main
execute store result score $undine_main5 spawn_count if entity @e[tag=field_undine_main_5]
execute if score $undine_main5 spawn_count matches ..1 as @e[tag=field_undine_main_ar_5] at @s run data merge storage mikatanserver:tagbox {"tag":["field_undine_main_5"]}
execute if score $undine_main5 spawn_count matches ..1 as @e[tag=field_undine_main_ar_5] at @s run function mikatanserver:adddim/area/undine/mob/main/spawn/main
execute store result score $undine_main6 spawn_count if entity @e[tag=field_undine_main_6]
execute if score $undine_main6 spawn_count matches ..1 as @e[tag=field_undine_main_ar_6] at @s run data merge storage mikatanserver:tagbox {"tag":["field_undine_main_6"]}
execute if score $undine_main6 spawn_count matches ..1 as @e[tag=field_undine_main_ar_6] at @s run function mikatanserver:adddim/area/undine/mob/main/spawn/main
execute store result score $undine_main7 spawn_count if entity @e[tag=field_undine_main_7]
execute if score $undine_main7 spawn_count matches ..1 as @e[tag=field_undine_main_ar_7] at @s run data merge storage mikatanserver:tagbox {"tag":["field_undine_main_7"]}
execute if score $undine_main7 spawn_count matches ..1 as @e[tag=field_undine_main_ar_7] at @s run function mikatanserver:adddim/area/undine/mob/main/spawn/main
execute store result score $undine_main8 spawn_count if entity @e[tag=field_undine_main_8]
execute if score $undine_main8 spawn_count matches ..1 as @e[tag=field_undine_main_ar_8] at @s run data merge storage mikatanserver:tagbox {"tag":["field_undine_main_8"]}
execute if score $undine_main8 spawn_count matches ..1 as @e[tag=field_undine_main_ar_8] at @s run function mikatanserver:adddim/area/undine/mob/main/spawn/main
execute store result score $undine_main9 spawn_count if entity @e[tag=field_undine_main_9]
execute if score $undine_main9 spawn_count matches ..1 as @e[tag=field_undine_main_ar_9] at @s run data merge storage mikatanserver:tagbox {"tag":["field_undine_main_9"]}
execute if score $undine_main9 spawn_count matches ..1 as @e[tag=field_undine_main_ar_9] at @s run function mikatanserver:adddim/area/undine/mob/main/spawn/main

scoreboard players reset $undine_main1 spawn_count
scoreboard players reset $undine_main2 spawn_count
scoreboard players reset $undine_main3 spawn_count
scoreboard players reset $undine_main4 spawn_count
scoreboard players reset $undine_main5 spawn_count
scoreboard players reset $undine_main6 spawn_count
scoreboard players reset $undine_main7 spawn_count
scoreboard players reset $undine_main8 spawn_count
scoreboard players reset $undine_main9 spawn_count