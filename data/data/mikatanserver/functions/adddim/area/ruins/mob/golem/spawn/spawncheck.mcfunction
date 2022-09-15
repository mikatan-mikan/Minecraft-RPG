##mikatanserver:adddim/area/ruins/mob/golem/spawn/main 関数は 自身の座標と0-6の乱数を足したものから3を引いた場所にスポーンさせる関数(自身の周囲7*7)

execute store result score $ru_golem1 spawn_count if entity @e[tag=field_ruins_golem_1]
execute if score $ru_golem1 spawn_count matches ..1 as @e[tag=field_ruins_golem_ar_1] at @s run data merge storage mikatanserver:tagbox {"tag":["field_ruins_golem_1"]}
execute if score $ru_golem1 spawn_count matches ..1 as @e[tag=field_ruins_golem_ar_1] at @s run function mikatanserver:adddim/area/ruins/mob/golem/spawn/main
execute store result score $ru_golem2 spawn_count if entity @e[tag=field_ruins_golem_2]
execute if score $ru_golem2 spawn_count matches ..1 as @e[tag=field_ruins_golem_ar_2] at @s run data merge storage mikatanserver:tagbox {"tag":["field_ruins_golem_2"]}
execute if score $ru_golem2 spawn_count matches ..1 as @e[tag=field_ruins_golem_ar_2] at @s run function mikatanserver:adddim/area/ruins/mob/golem/spawn/main
execute store result score $ru_golem3 spawn_count if entity @e[tag=field_ruins_golem_3]
execute if score $ru_golem3 spawn_count matches ..1 as @e[tag=field_ruins_golem_ar_3] at @s run data merge storage mikatanserver:tagbox {"tag":["field_ruins_golem_3"]}
execute if score $ru_golem3 spawn_count matches ..1 as @e[tag=field_ruins_golem_ar_3] at @s run function mikatanserver:adddim/area/ruins/mob/golem/spawn/main
execute store result score $ru_golem4 spawn_count if entity @e[tag=field_ruins_golem_4]
execute if score $ru_golem4 spawn_count matches ..1 as @e[tag=field_ruins_golem_ar_4] at @s run data merge storage mikatanserver:tagbox {"tag":["field_ruins_golem_4"]}
execute if score $ru_golem4 spawn_count matches ..1 as @e[tag=field_ruins_golem_ar_4] at @s run function mikatanserver:adddim/area/ruins/mob/golem/spawn/main
execute store result score $ru_golem5 spawn_count if entity @e[tag=field_ruins_golem_5]
execute if score $ru_golem5 spawn_count matches ..1 as @e[tag=field_ruins_golem_ar_5] at @s run data merge storage mikatanserver:tagbox {"tag":["field_ruins_golem_5"]}
execute if score $ru_golem5 spawn_count matches ..1 as @e[tag=field_ruins_golem_ar_5] at @s run function mikatanserver:adddim/area/ruins/mob/golem/spawn/main
execute store result score $ru_golem6 spawn_count if entity @e[tag=field_ruins_golem_6]
execute if score $ru_golem6 spawn_count matches ..1 as @e[tag=field_ruins_golem_ar_6] at @s run data merge storage mikatanserver:tagbox {"tag":["field_ruins_golem_6"]}
execute if score $ru_golem6 spawn_count matches ..1 as @e[tag=field_ruins_golem_ar_6] at @s run function mikatanserver:adddim/area/ruins/mob/golem/spawn/main
execute store result score $ru_golem7 spawn_count if entity @e[tag=field_ruins_golem_7]
execute if score $ru_golem7 spawn_count matches ..1 as @e[tag=field_ruins_golem_ar_7] at @s run data merge storage mikatanserver:tagbox {"tag":["field_ruins_golem_7"]}
execute if score $ru_golem7 spawn_count matches ..1 as @e[tag=field_ruins_golem_ar_7] at @s run function mikatanserver:adddim/area/ruins/mob/golem/spawn/main
execute store result score $ru_golem8 spawn_count if entity @e[tag=field_ruins_golem_8]
execute if score $ru_golem8 spawn_count matches ..1 as @e[tag=field_ruins_golem_ar_8] at @s run data merge storage mikatanserver:tagbox {"tag":["field_ruins_golem_8"]}
execute if score $ru_golem8 spawn_count matches ..1 as @e[tag=field_ruins_golem_ar_8] at @s run function mikatanserver:adddim/area/ruins/mob/golem/spawn/main
execute store result score $ru_golem9 spawn_count if entity @e[tag=field_ruins_golem_9]
execute if score $ru_golem9 spawn_count matches ..1 as @e[tag=field_ruins_golem_ar_9] at @s run data merge storage mikatanserver:tagbox {"tag":["field_ruins_golem_9"]}
execute if score $ru_golem9 spawn_count matches ..1 as @e[tag=field_ruins_golem_ar_9] at @s run function mikatanserver:adddim/area/ruins/mob/golem/spawn/main
execute store result score $ru_golem10 spawn_count if entity @e[tag=field_ruins_golem_10]
execute if score $ru_golem10 spawn_count matches ..1 as @e[tag=field_ruins_golem_ar_10] at @s run data merge storage mikatanserver:tagbox {"tag":["field_ruins_golem_10"]}
execute if score $ru_golem10 spawn_count matches ..1 as @e[tag=field_ruins_golem_ar_10] at @s run function mikatanserver:adddim/area/ruins/mob/golem/spawn/main
execute store result score $ru_golem11 spawn_count if entity @e[tag=field_ruins_golem_11]
execute if score $ru_golem11 spawn_count matches ..1 as @e[tag=field_ruins_golem_ar_11] at @s run data merge storage mikatanserver:tagbox {"tag":["field_ruins_golem_11"]}
execute if score $ru_golem11 spawn_count matches ..1 as @e[tag=field_ruins_golem_ar_11] at @s run function mikatanserver:adddim/area/ruins/mob/golem/spawn/main
execute store result score $ru_golem12 spawn_count if entity @e[tag=field_ruins_golem_12]
execute if score $ru_golem12 spawn_count matches ..1 as @e[tag=field_ruins_golem_ar_12] at @s run data merge storage mikatanserver:tagbox {"tag":["field_ruins_golem_12"]}
execute if score $ru_golem12 spawn_count matches ..1 as @e[tag=field_ruins_golem_ar_12] at @s run function mikatanserver:adddim/area/ruins/mob/golem/spawn/main
execute store result score $ru_golem13 spawn_count if entity @e[tag=field_ruins_golem_13]
execute if score $ru_golem13 spawn_count matches ..1 as @e[tag=field_ruins_golem_ar_13] at @s run data merge storage mikatanserver:tagbox {"tag":["field_ruins_golem_13"]}
execute if score $ru_golem13 spawn_count matches ..1 as @e[tag=field_ruins_golem_ar_13] at @s run function mikatanserver:adddim/area/ruins/mob/golem/spawn/main
execute store result score $ru_golem14 spawn_count if entity @e[tag=field_ruins_golem_14]
execute if score $ru_golem14 spawn_count matches ..1 as @e[tag=field_ruins_golem_ar_14] at @s run data merge storage mikatanserver:tagbox {"tag":["field_ruins_golem_14"]}
execute if score $ru_golem14 spawn_count matches ..1 as @e[tag=field_ruins_golem_ar_14] at @s run function mikatanserver:adddim/area/ruins/mob/golem/spawn/main
execute store result score $ru_golem15 spawn_count if entity @e[tag=field_ruins_golem_15]
execute if score $ru_golem15 spawn_count matches ..1 as @e[tag=field_ruins_golem_ar_15] at @s run data merge storage mikatanserver:tagbox {"tag":["field_ruins_golem_15"]}
execute if score $ru_golem15 spawn_count matches ..1 as @e[tag=field_ruins_golem_ar_15] at @s run function mikatanserver:adddim/area/ruins/mob/golem/spawn/main


scoreboard players reset $ru_golem1 spawn_count
scoreboard players reset $ru_golem2 spawn_count
scoreboard players reset $ru_golem3 spawn_count
scoreboard players reset $ru_golem4 spawn_count
scoreboard players reset $ru_golem5 spawn_count
scoreboard players reset $ru_golem6 spawn_count
scoreboard players reset $ru_golem7 spawn_count
scoreboard players reset $ru_golem8 spawn_count
scoreboard players reset $ru_golem9 spawn_count
scoreboard players reset $ru_golem10 spawn_count
scoreboard players reset $ru_golem11 spawn_count
scoreboard players reset $ru_golem12 spawn_count
scoreboard players reset $ru_golem13 spawn_count
scoreboard players reset $ru_golem14 spawn_count
scoreboard players reset $ru_golem15 spawn_count