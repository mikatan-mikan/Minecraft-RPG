##mikatanserver:adddim/area/ruins/mob/skeleton/spawn/main 関数は 自身の座標と0-6の乱数を足したものから3を引いた場所にスポーンさせる関数(自身の周囲7*7)

execute store result score $ru_skeleton1 spawn_count if entity @e[tag=field_ruins_skeleton_1]
execute if score $ru_skeleton1 spawn_count matches ..1 as @e[tag=field_ruins_skeleton_ar_1] at @s run data merge storage mikatanserver:tagbox {"tag":["field_ruins_skeleton_1"]}
execute if score $ru_skeleton1 spawn_count matches ..1 as @e[tag=field_ruins_skeleton_ar_1] at @s run function mikatanserver:adddim/area/ruins/mob/skeleton/spawn/main
execute store result score $ru_skeleton2 spawn_count if entity @e[tag=field_ruins_skeleton_2]
execute if score $ru_skeleton2 spawn_count matches ..1 as @e[tag=field_ruins_skeleton_ar_2] at @s run data merge storage mikatanserver:tagbox {"tag":["field_ruins_skeleton_2"]}
execute if score $ru_skeleton2 spawn_count matches ..1 as @e[tag=field_ruins_skeleton_ar_2] at @s run function mikatanserver:adddim/area/ruins/mob/skeleton/spawn/main
execute store result score $ru_skeleton3 spawn_count if entity @e[tag=field_ruins_skeleton_3]
execute if score $ru_skeleton3 spawn_count matches ..1 as @e[tag=field_ruins_skeleton_ar_3] at @s run data merge storage mikatanserver:tagbox {"tag":["field_ruins_skeleton_3"]}
execute if score $ru_skeleton3 spawn_count matches ..1 as @e[tag=field_ruins_skeleton_ar_3] at @s run function mikatanserver:adddim/area/ruins/mob/skeleton/spawn/main
execute store result score $ru_skeleton4 spawn_count if entity @e[tag=field_ruins_skeleton_4]
execute if score $ru_skeleton4 spawn_count matches ..1 as @e[tag=field_ruins_skeleton_ar_4] at @s run data merge storage mikatanserver:tagbox {"tag":["field_ruins_skeleton_4"]}
execute if score $ru_skeleton4 spawn_count matches ..1 as @e[tag=field_ruins_skeleton_ar_4] at @s run function mikatanserver:adddim/area/ruins/mob/skeleton/spawn/main
execute store result score $ru_skeleton5 spawn_count if entity @e[tag=field_ruins_skeleton_5]
execute if score $ru_skeleton5 spawn_count matches ..1 as @e[tag=field_ruins_skeleton_ar_5] at @s run data merge storage mikatanserver:tagbox {"tag":["field_ruins_skeleton_5"]}
execute if score $ru_skeleton5 spawn_count matches ..1 as @e[tag=field_ruins_skeleton_ar_5] at @s run function mikatanserver:adddim/area/ruins/mob/skeleton/spawn/main
execute store result score $ru_skeleton6 spawn_count if entity @e[tag=field_ruins_skeleton_6]
execute if score $ru_skeleton6 spawn_count matches ..1 as @e[tag=field_ruins_skeleton_ar_6] at @s run data merge storage mikatanserver:tagbox {"tag":["field_ruins_skeleton_6"]}
execute if score $ru_skeleton6 spawn_count matches ..1 as @e[tag=field_ruins_skeleton_ar_6] at @s run function mikatanserver:adddim/area/ruins/mob/skeleton/spawn/main
execute store result score $ru_skeleton7 spawn_count if entity @e[tag=field_ruins_skeleton_7]
execute if score $ru_skeleton7 spawn_count matches ..1 as @e[tag=field_ruins_skeleton_ar_7] at @s run data merge storage mikatanserver:tagbox {"tag":["field_ruins_skeleton_7"]}
execute if score $ru_skeleton7 spawn_count matches ..1 as @e[tag=field_ruins_skeleton_ar_7] at @s run function mikatanserver:adddim/area/ruins/mob/skeleton/spawn/main
execute store result score $ru_skeleton8 spawn_count if entity @e[tag=field_ruins_skeleton_8]
execute if score $ru_skeleton8 spawn_count matches ..1 as @e[tag=field_ruins_skeleton_ar_8] at @s run data merge storage mikatanserver:tagbox {"tag":["field_ruins_skeleton_8"]}
execute if score $ru_skeleton8 spawn_count matches ..1 as @e[tag=field_ruins_skeleton_ar_8] at @s run function mikatanserver:adddim/area/ruins/mob/skeleton/spawn/main
execute store result score $ru_skeleton9 spawn_count if entity @e[tag=field_ruins_skeleton_9]
execute if score $ru_skeleton9 spawn_count matches ..1 as @e[tag=field_ruins_skeleton_ar_9] at @s run data merge storage mikatanserver:tagbox {"tag":["field_ruins_skeleton_9"]}
execute if score $ru_skeleton9 spawn_count matches ..1 as @e[tag=field_ruins_skeleton_ar_9] at @s run function mikatanserver:adddim/area/ruins/mob/skeleton/spawn/main
execute store result score $ru_skeleton10 spawn_count if entity @e[tag=field_ruins_skeleton_10]
execute if score $ru_skeleton10 spawn_count matches ..1 as @e[tag=field_ruins_skeleton_ar_10] at @s run data merge storage mikatanserver:tagbox {"tag":["field_ruins_skeleton_10"]}
execute if score $ru_skeleton10 spawn_count matches ..1 as @e[tag=field_ruins_skeleton_ar_10] at @s run function mikatanserver:adddim/area/ruins/mob/skeleton/spawn/main
execute store result score $ru_skeleton11 spawn_count if entity @e[tag=field_ruins_skeleton_11]
execute if score $ru_skeleton11 spawn_count matches ..1 as @e[tag=field_ruins_skeleton_ar_11] at @s run data merge storage mikatanserver:tagbox {"tag":["field_ruins_skeleton_11"]}
execute if score $ru_skeleton11 spawn_count matches ..1 as @e[tag=field_ruins_skeleton_ar_11] at @s run function mikatanserver:adddim/area/ruins/mob/skeleton/spawn/main
execute store result score $ru_skeleton12 spawn_count if entity @e[tag=field_ruins_skeleton_12]
execute if score $ru_skeleton12 spawn_count matches ..1 as @e[tag=field_ruins_skeleton_ar_12] at @s run data merge storage mikatanserver:tagbox {"tag":["field_ruins_skeleton_12"]}
execute if score $ru_skeleton12 spawn_count matches ..1 as @e[tag=field_ruins_skeleton_ar_12] at @s run function mikatanserver:adddim/area/ruins/mob/skeleton/spawn/main
execute store result score $ru_skeleton13 spawn_count if entity @e[tag=field_ruins_skeleton_13]
execute if score $ru_skeleton13 spawn_count matches ..1 as @e[tag=field_ruins_skeleton_ar_13] at @s run data merge storage mikatanserver:tagbox {"tag":["field_ruins_skeleton_13"]}
execute if score $ru_skeleton13 spawn_count matches ..1 as @e[tag=field_ruins_skeleton_ar_13] at @s run function mikatanserver:adddim/area/ruins/mob/skeleton/spawn/main
execute store result score $ru_skeleton14 spawn_count if entity @e[tag=field_ruins_skeleton_14]
execute if score $ru_skeleton14 spawn_count matches ..1 as @e[tag=field_ruins_skeleton_ar_14] at @s run data merge storage mikatanserver:tagbox {"tag":["field_ruins_skeleton_14"]}
execute if score $ru_skeleton14 spawn_count matches ..1 as @e[tag=field_ruins_skeleton_ar_14] at @s run function mikatanserver:adddim/area/ruins/mob/skeleton/spawn/main
execute store result score $ru_skeleton15 spawn_count if entity @e[tag=field_ruins_skeleton_15]
execute if score $ru_skeleton15 spawn_count matches ..1 as @e[tag=field_ruins_skeleton_ar_15] at @s run data merge storage mikatanserver:tagbox {"tag":["field_ruins_skeleton_15"]}
execute if score $ru_skeleton15 spawn_count matches ..1 as @e[tag=field_ruins_skeleton_ar_15] at @s run function mikatanserver:adddim/area/ruins/mob/skeleton/spawn/main
execute store result score $ru_skeleton16 spawn_count if entity @e[tag=field_ruins_skeleton_16]
execute if score $ru_skeleton16 spawn_count matches ..1 as @e[tag=field_ruins_skeleton_ar_16] at @s run data merge storage mikatanserver:tagbox {"tag":["field_ruins_skeleton_16"]}
execute if score $ru_skeleton16 spawn_count matches ..1 as @e[tag=field_ruins_skeleton_ar_16] at @s run function mikatanserver:adddim/area/ruins/mob/skeleton/spawn/main
execute store result score $ru_skeleton17 spawn_count if entity @e[tag=field_ruins_skeleton_17]
execute if score $ru_skeleton17 spawn_count matches ..1 as @e[tag=field_ruins_skeleton_ar_17] at @s run data merge storage mikatanserver:tagbox {"tag":["field_ruins_skeleton_17"]}
execute if score $ru_skeleton17 spawn_count matches ..1 as @e[tag=field_ruins_skeleton_ar_17] at @s run function mikatanserver:adddim/area/ruins/mob/skeleton/spawn/main
execute store result score $ru_skeleton18 spawn_count if entity @e[tag=field_ruins_skeleton_18]
execute if score $ru_skeleton18 spawn_count matches ..1 as @e[tag=field_ruins_skeleton_ar_18] at @s run data merge storage mikatanserver:tagbox {"tag":["field_ruins_skeleton_18"]}
execute if score $ru_skeleton18 spawn_count matches ..1 as @e[tag=field_ruins_skeleton_ar_18] at @s run function mikatanserver:adddim/area/ruins/mob/skeleton/spawn/main
execute store result score $ru_skeleton19 spawn_count if entity @e[tag=field_ruins_skeleton_19]
execute if score $ru_skeleton19 spawn_count matches ..1 as @e[tag=field_ruins_skeleton_ar_19] at @s run data merge storage mikatanserver:tagbox {"tag":["field_ruins_skeleton_19"]}
execute if score $ru_skeleton19 spawn_count matches ..1 as @e[tag=field_ruins_skeleton_ar_19] at @s run function mikatanserver:adddim/area/ruins/mob/skeleton/spawn/main
execute store result score $ru_skeleton20 spawn_count if entity @e[tag=field_ruins_skeleton_20]
execute if score $ru_skeleton20 spawn_count matches ..1 as @e[tag=field_ruins_skeleton_ar_20] at @s run data merge storage mikatanserver:tagbox {"tag":["field_ruins_skeleton_20"]}
execute if score $ru_skeleton20 spawn_count matches ..1 as @e[tag=field_ruins_skeleton_ar_20] at @s run function mikatanserver:adddim/area/ruins/mob/skeleton/spawn/main
execute store result score $ru_skeleton21 spawn_count if entity @e[tag=field_ruins_skeleton_21]
execute if score $ru_skeleton21 spawn_count matches ..1 as @e[tag=field_ruins_skeleton_ar_21] at @s run data merge storage mikatanserver:tagbox {"tag":["field_ruins_skeleton_21"]}
execute if score $ru_skeleton21 spawn_count matches ..1 as @e[tag=field_ruins_skeleton_ar_21] at @s run function mikatanserver:adddim/area/ruins/mob/skeleton/spawn/main
execute store result score $ru_skeleton22 spawn_count if entity @e[tag=field_ruins_skeleton_22]
execute if score $ru_skeleton22 spawn_count matches ..1 as @e[tag=field_ruins_skeleton_ar_22] at @s run data merge storage mikatanserver:tagbox {"tag":["field_ruins_skeleton_22"]}
execute if score $ru_skeleton22 spawn_count matches ..1 as @e[tag=field_ruins_skeleton_ar_22] at @s run function mikatanserver:adddim/area/ruins/mob/skeleton/spawn/main
execute store result score $ru_skeleton23 spawn_count if entity @e[tag=field_ruins_skeleton_23]
execute if score $ru_skeleton23 spawn_count matches ..1 as @e[tag=field_ruins_skeleton_ar_23] at @s run data merge storage mikatanserver:tagbox {"tag":["field_ruins_skeleton_23"]}
execute if score $ru_skeleton23 spawn_count matches ..1 as @e[tag=field_ruins_skeleton_ar_23] at @s run function mikatanserver:adddim/area/ruins/mob/skeleton/spawn/main
execute store result score $ru_skeleton24 spawn_count if entity @e[tag=field_ruins_skeleton_24]
execute if score $ru_skeleton24 spawn_count matches ..1 as @e[tag=field_ruins_skeleton_ar_24] at @s run data merge storage mikatanserver:tagbox {"tag":["field_ruins_skeleton_24"]}
execute if score $ru_skeleton24 spawn_count matches ..1 as @e[tag=field_ruins_skeleton_ar_24] at @s run function mikatanserver:adddim/area/ruins/mob/skeleton/spawn/main


scoreboard players reset $ru_skeleton1 spawn_count
scoreboard players reset $ru_skeleton2 spawn_count
scoreboard players reset $ru_skeleton3 spawn_count
scoreboard players reset $ru_skeleton4 spawn_count
scoreboard players reset $ru_skeleton5 spawn_count
scoreboard players reset $ru_skeleton6 spawn_count
scoreboard players reset $ru_skeleton7 spawn_count
scoreboard players reset $ru_skeleton8 spawn_count
scoreboard players reset $ru_skeleton9 spawn_count
scoreboard players reset $ru_skeleton10 spawn_count
scoreboard players reset $ru_skeleton11 spawn_count
scoreboard players reset $ru_skeleton12 spawn_count
scoreboard players reset $ru_skeleton13 spawn_count
scoreboard players reset $ru_skeleton14 spawn_count
scoreboard players reset $ru_skeleton15 spawn_count
scoreboard players reset $ru_skeleton16 spawn_count
scoreboard players reset $ru_skeleton17 spawn_count
scoreboard players reset $ru_skeleton18 spawn_count
scoreboard players reset $ru_skeleton19 spawn_count
scoreboard players reset $ru_skeleton20 spawn_count
scoreboard players reset $ru_skeleton21 spawn_count
scoreboard players reset $ru_skeleton22 spawn_count
scoreboard players reset $ru_skeleton23 spawn_count
scoreboard players reset $ru_skeleton24 spawn_count