##mikatanserver:adddim/area/ruins/mob/masic_witch/spawn/main 関数は 自身の座標と0-6の乱数を足したものから3を引いた場所にスポーンさせる関数(自身の周囲7*7)

execute store result score $ru_masic_witch1 spawn_count if entity @e[tag=field_ruins_masic_witch_1]
execute if score $ru_masic_witch1 spawn_count matches 0 as @e[tag=field_ruins_masic_witch_ar_1] at @s run data merge storage mikatanserver:tagbox {"tag":["field_ruins_masic_witch_1"]}
execute if score $ru_masic_witch1 spawn_count matches 0 as @e[tag=field_ruins_masic_witch_ar_1] at @s run function mikatanserver:adddim/area/ruins/mob/masic_witch/spawn/main
execute store result score $ru_masic_witch2 spawn_count if entity @e[tag=field_ruins_masic_witch_2]
execute if score $ru_masic_witch2 spawn_count matches 0 as @e[tag=field_ruins_masic_witch_ar_2] at @s run data merge storage mikatanserver:tagbox {"tag":["field_ruins_masic_witch_2"]}
execute if score $ru_masic_witch2 spawn_count matches 0 as @e[tag=field_ruins_masic_witch_ar_2] at @s run function mikatanserver:adddim/area/ruins/mob/masic_witch/spawn/main
execute store result score $ru_masic_witch3 spawn_count if entity @e[tag=field_ruins_masic_witch_3]
execute if score $ru_masic_witch3 spawn_count matches 0 as @e[tag=field_ruins_masic_witch_ar_3] at @s run data merge storage mikatanserver:tagbox {"tag":["field_ruins_masic_witch_3"]}
execute if score $ru_masic_witch3 spawn_count matches 0 as @e[tag=field_ruins_masic_witch_ar_3] at @s run function mikatanserver:adddim/area/ruins/mob/masic_witch/spawn/main
execute store result score $ru_masic_witch4 spawn_count if entity @e[tag=field_ruins_masic_witch_4]
execute if score $ru_masic_witch4 spawn_count matches 0 as @e[tag=field_ruins_masic_witch_ar_4] at @s run data merge storage mikatanserver:tagbox {"tag":["field_ruins_masic_witch_4"]}
execute if score $ru_masic_witch4 spawn_count matches 0 as @e[tag=field_ruins_masic_witch_ar_4] at @s run function mikatanserver:adddim/area/ruins/mob/masic_witch/spawn/main
execute store result score $ru_masic_witch5 spawn_count if entity @e[tag=field_ruins_masic_witch_5]
execute if score $ru_masic_witch5 spawn_count matches 0 as @e[tag=field_ruins_masic_witch_ar_5] at @s run data merge storage mikatanserver:tagbox {"tag":["field_ruins_masic_witch_5"]}
execute if score $ru_masic_witch5 spawn_count matches 0 as @e[tag=field_ruins_masic_witch_ar_5] at @s run function mikatanserver:adddim/area/ruins/mob/masic_witch/spawn/main
execute store result score $ru_masic_witch6 spawn_count if entity @e[tag=field_ruins_masic_witch_6]
execute if score $ru_masic_witch6 spawn_count matches 0 as @e[tag=field_ruins_masic_witch_ar_6] at @s run data merge storage mikatanserver:tagbox {"tag":["field_ruins_masic_witch_6"]}
execute if score $ru_masic_witch6 spawn_count matches 0 as @e[tag=field_ruins_masic_witch_ar_6] at @s run function mikatanserver:adddim/area/ruins/mob/masic_witch/spawn/main

scoreboard players reset $ru_masic_witch1 spawn_count
scoreboard players reset $ru_masic_witch2 spawn_count
scoreboard players reset $ru_masic_witch3 spawn_count
scoreboard players reset $ru_masic_witch4 spawn_count
scoreboard players reset $ru_masic_witch5 spawn_count
scoreboard players reset $ru_masic_witch6 spawn_count