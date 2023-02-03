execute store result score $salamander_fire1 spawn_count if entity @e[tag=field_salamander_fire_1]
execute if score $salamander_fire1 spawn_count matches ..1 as @e[tag=field_salamander_fire_ar_1] at @s run data merge storage mikatanserver:tagbox {"tag":["field_salamander_fire_1"]}
execute if score $salamander_fire1 spawn_count matches ..1 as @e[tag=field_salamander_fire_ar_1] at @s run function mikatanserver:adddim/area/salamander/mob/fire/spawn/main
execute store result score $salamander_fire2 spawn_count if entity @e[tag=field_salamander_fire_2]
execute if score $salamander_fire2 spawn_count matches ..1 as @e[tag=field_salamander_fire_ar_2] at @s run data merge storage mikatanserver:tagbox {"tag":["field_salamander_fire_2"]}
execute if score $salamander_fire2 spawn_count matches ..1 as @e[tag=field_salamander_fire_ar_2] at @s run function mikatanserver:adddim/area/salamander/mob/fire/spawn/main
execute store result score $salamander_fire3 spawn_count if entity @e[tag=field_salamander_fire_3]
execute if score $salamander_fire3 spawn_count matches ..1 as @e[tag=field_salamander_fire_ar_3] at @s run data merge storage mikatanserver:tagbox {"tag":["field_salamander_fire_3"]}
execute if score $salamander_fire3 spawn_count matches ..1 as @e[tag=field_salamander_fire_ar_3] at @s run function mikatanserver:adddim/area/salamander/mob/fire/spawn/main
execute store result score $salamander_fire4 spawn_count if entity @e[tag=field_salamander_fire_4]
execute if score $salamander_fire4 spawn_count matches ..1 as @e[tag=field_salamander_fire_ar_4] at @s run data merge storage mikatanserver:tagbox {"tag":["field_salamander_fire_4"]}
execute if score $salamander_fire4 spawn_count matches ..1 as @e[tag=field_salamander_fire_ar_4] at @s run function mikatanserver:adddim/area/salamander/mob/fire/spawn/main
execute store result score $salamander_fire5 spawn_count if entity @e[tag=field_salamander_fire_5]
execute if score $salamander_fire5 spawn_count matches ..1 as @e[tag=field_salamander_fire_ar_5] at @s run data merge storage mikatanserver:tagbox {"tag":["field_salamander_fire_5"]}
execute if score $salamander_fire5 spawn_count matches ..1 as @e[tag=field_salamander_fire_ar_5] at @s run function mikatanserver:adddim/area/salamander/mob/fire/spawn/main
execute store result score $salamander_fire6 spawn_count if entity @e[tag=field_salamander_fire_6]
execute if score $salamander_fire6 spawn_count matches ..1 as @e[tag=field_salamander_fire_ar_6] at @s run data merge storage mikatanserver:tagbox {"tag":["field_salamander_fire_6"]}
execute if score $salamander_fire6 spawn_count matches ..1 as @e[tag=field_salamander_fire_ar_6] at @s run function mikatanserver:adddim/area/salamander/mob/fire/spawn/main
execute store result score $salamander_fire7 spawn_count if entity @e[tag=field_salamander_fire_7]
execute if score $salamander_fire7 spawn_count matches ..1 as @e[tag=field_salamander_fire_ar_7] at @s run data merge storage mikatanserver:tagbox {"tag":["field_salamander_fire_7"]}
execute if score $salamander_fire7 spawn_count matches ..1 as @e[tag=field_salamander_fire_ar_7] at @s run function mikatanserver:adddim/area/salamander/mob/fire/spawn/main
execute store result score $salamander_fire8 spawn_count if entity @e[tag=field_salamander_fire_8]
execute if score $salamander_fire8 spawn_count matches ..1 as @e[tag=field_salamander_fire_ar_8] at @s run data merge storage mikatanserver:tagbox {"tag":["field_salamander_fire_8"]}
execute if score $salamander_fire8 spawn_count matches ..1 as @e[tag=field_salamander_fire_ar_8] at @s run function mikatanserver:adddim/area/salamander/mob/fire/spawn/main


scoreboard players reset $salamander_fire1 spawn_count
scoreboard players reset $salamander_fire2 spawn_count
scoreboard players reset $salamander_fire3 spawn_count
scoreboard players reset $salamander_fire4 spawn_count
scoreboard players reset $salamander_fire5 spawn_count
scoreboard players reset $salamander_fire6 spawn_count
scoreboard players reset $salamander_fire7 spawn_count
scoreboard players reset $salamander_fire8 spawn_count