##mikatanserver:adddim/area/ruins/mob/guardian/spawn/main 関数は 自身の座標と0-6の乱数を足したものから3を引いた場所にスポーンさせる関数(自身の周囲7*7)

execute store result score $ru_guardian1 spawn_count if entity @e[tag=field_ruins_guardian_1]
execute if score $ru_guardian1 spawn_count matches ..1 as @e[tag=field_ruins_guardian_ar_1] at @s run data merge storage mikatanserver:tagbox {"tag":["field_ruins_guardian_1"]}
execute if score $ru_guardian1 spawn_count matches ..1 as @e[tag=field_ruins_guardian_ar_1] at @s run function mikatanserver:adddim/area/ruins/mob/guardian/spawn/main
execute store result score $ru_guardian2 spawn_count if entity @e[tag=field_ruins_guardian_2]
execute if score $ru_guardian2 spawn_count matches ..1 as @e[tag=field_ruins_guardian_ar_2] at @s run data merge storage mikatanserver:tagbox {"tag":["field_ruins_guardian_2"]}
execute if score $ru_guardian2 spawn_count matches ..1 as @e[tag=field_ruins_guardian_ar_2] at @s run function mikatanserver:adddim/area/ruins/mob/guardian/spawn/main
execute store result score $ru_guardian3 spawn_count if entity @e[tag=field_ruins_guardian_3]
execute if score $ru_guardian3 spawn_count matches ..1 as @e[tag=field_ruins_guardian_ar_3] at @s run data merge storage mikatanserver:tagbox {"tag":["field_ruins_guardian_3"]}
execute if score $ru_guardian3 spawn_count matches ..1 as @e[tag=field_ruins_guardian_ar_3] at @s run function mikatanserver:adddim/area/ruins/mob/guardian/spawn/main
execute store result score $ru_guardian4 spawn_count if entity @e[tag=field_ruins_guardian_4]
execute if score $ru_guardian4 spawn_count matches ..1 as @e[tag=field_ruins_guardian_ar_4] at @s run data merge storage mikatanserver:tagbox {"tag":["field_ruins_guardian_4"]}
execute if score $ru_guardian4 spawn_count matches ..1 as @e[tag=field_ruins_guardian_ar_4] at @s run function mikatanserver:adddim/area/ruins/mob/guardian/spawn/main
execute store result score $ru_guardian5 spawn_count if entity @e[tag=field_ruins_guardian_5]
execute if score $ru_guardian5 spawn_count matches ..1 as @e[tag=field_ruins_guardian_ar_5] at @s run data merge storage mikatanserver:tagbox {"tag":["field_ruins_guardian_5"]}
execute if score $ru_guardian5 spawn_count matches ..1 as @e[tag=field_ruins_guardian_ar_5] at @s run function mikatanserver:adddim/area/ruins/mob/guardian/spawn/main
execute store result score $ru_guardian6 spawn_count if entity @e[tag=field_ruins_guardian_6]
execute if score $ru_guardian6 spawn_count matches ..1 as @e[tag=field_ruins_guardian_ar_6] at @s run data merge storage mikatanserver:tagbox {"tag":["field_ruins_guardian_6"]}
execute if score $ru_guardian6 spawn_count matches ..1 as @e[tag=field_ruins_guardian_ar_6] at @s run function mikatanserver:adddim/area/ruins/mob/guardian/spawn/main
execute store result score $ru_guardian7 spawn_count if entity @e[tag=field_ruins_guardian_7]
execute if score $ru_guardian7 spawn_count matches ..1 as @e[tag=field_ruins_guardian_ar_7] at @s run data merge storage mikatanserver:tagbox {"tag":["field_ruins_guardian_7"]}
execute if score $ru_guardian7 spawn_count matches ..1 as @e[tag=field_ruins_guardian_ar_7] at @s run function mikatanserver:adddim/area/ruins/mob/guardian/spawn/main
execute store result score $ru_guardian8 spawn_count if entity @e[tag=field_ruins_guardian_8]
execute if score $ru_guardian8 spawn_count matches ..1 as @e[tag=field_ruins_guardian_ar_8] at @s run data merge storage mikatanserver:tagbox {"tag":["field_ruins_guardian_8"]}
execute if score $ru_guardian8 spawn_count matches ..1 as @e[tag=field_ruins_guardian_ar_8] at @s run function mikatanserver:adddim/area/ruins/mob/guardian/spawn/main
execute store result score $ru_guardian9 spawn_count if entity @e[tag=field_ruins_guardian_9]
execute if score $ru_guardian9 spawn_count matches ..1 as @e[tag=field_ruins_guardian_ar_9] at @s run data merge storage mikatanserver:tagbox {"tag":["field_ruins_guardian_9"]}
execute if score $ru_guardian9 spawn_count matches ..1 as @e[tag=field_ruins_guardian_ar_9] at @s run function mikatanserver:adddim/area/ruins/mob/guardian/spawn/main
execute store result score $ru_guardian10 spawn_count if entity @e[tag=field_ruins_guardian_10]
execute if score $ru_guardian10 spawn_count matches ..1 as @e[tag=field_ruins_guardian_ar_10] at @s run data merge storage mikatanserver:tagbox {"tag":["field_ruins_guardian_10"]}
execute if score $ru_guardian10 spawn_count matches ..1 as @e[tag=field_ruins_guardian_ar_10] at @s run function mikatanserver:adddim/area/ruins/mob/guardian/spawn/main
execute store result score $ru_guardian11 spawn_count if entity @e[tag=field_ruins_guardian_11]
execute if score $ru_guardian11 spawn_count matches ..1 as @e[tag=field_ruins_guardian_ar_11] at @s run data merge storage mikatanserver:tagbox {"tag":["field_ruins_guardian_11"]}
execute if score $ru_guardian11 spawn_count matches ..1 as @e[tag=field_ruins_guardian_ar_11] at @s run function mikatanserver:adddim/area/ruins/mob/guardian/spawn/main
execute store result score $ru_guardian12 spawn_count if entity @e[tag=field_ruins_guardian_12]
execute if score $ru_guardian12 spawn_count matches ..1 as @e[tag=field_ruins_guardian_ar_12] at @s run data merge storage mikatanserver:tagbox {"tag":["field_ruins_guardian_12"]}
execute if score $ru_guardian12 spawn_count matches ..1 as @e[tag=field_ruins_guardian_ar_12] at @s run function mikatanserver:adddim/area/ruins/mob/guardian/spawn/main
execute store result score $ru_guardian13 spawn_count if entity @e[tag=field_ruins_guardian_13]
execute if score $ru_guardian13 spawn_count matches ..1 as @e[tag=field_ruins_guardian_ar_13] at @s run data merge storage mikatanserver:tagbox {"tag":["field_ruins_guardian_13"]}
execute if score $ru_guardian13 spawn_count matches ..1 as @e[tag=field_ruins_guardian_ar_13] at @s run function mikatanserver:adddim/area/ruins/mob/guardian/spawn/main
execute store result score $ru_guardian14 spawn_count if entity @e[tag=field_ruins_guardian_14]
execute if score $ru_guardian14 spawn_count matches ..1 as @e[tag=field_ruins_guardian_ar_14] at @s run data merge storage mikatanserver:tagbox {"tag":["field_ruins_guardian_14"]}
execute if score $ru_guardian14 spawn_count matches ..1 as @e[tag=field_ruins_guardian_ar_14] at @s run function mikatanserver:adddim/area/ruins/mob/guardian/spawn/main


scoreboard players reset $ru_guardian1 spawn_count
scoreboard players reset $ru_guardian2 spawn_count
scoreboard players reset $ru_guardian3 spawn_count
scoreboard players reset $ru_guardian4 spawn_count
scoreboard players reset $ru_guardian5 spawn_count
scoreboard players reset $ru_guardian6 spawn_count
scoreboard players reset $ru_guardian7 spawn_count
scoreboard players reset $ru_guardian8 spawn_count
scoreboard players reset $ru_guardian9 spawn_count
scoreboard players reset $ru_guardian10 spawn_count
scoreboard players reset $ru_guardian11 spawn_count
scoreboard players reset $ru_guardian12 spawn_count
scoreboard players reset $ru_guardian13 spawn_count
scoreboard players reset $ru_guardian14 spawn_count