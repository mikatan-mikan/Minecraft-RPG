##mikatanserver:adddim/area/ender_tier2/mob/enderman/spawn/main 関数は 自身の座標と0-6の乱数を足したものから3を引いた場所にスポーンさせる関数(自身の周囲7*7)

execute store result score $ender_tier2_1 spawn_count if entity @e[tag=field_enderman_tier2_1]
execute if score $ender_tier2_1 spawn_count matches ..1 as @e[tag=field_ender_tier2_ar_1] at @s run data merge storage mikatanserver:ender_tagbox {"tag":["field_enderman_tier2_1"]}
execute if score $ender_tier2_1 spawn_count matches ..1 as @e[tag=field_ender_tier2_ar_1] at @s run function mikatanserver:adddim/area/ender_tier2/mob/enderman/spawn/main
execute store result score $ender_tier2_2 spawn_count if entity @e[tag=field_enderman_tier2_2]
execute if score $ender_tier2_2 spawn_count matches ..1 as @e[tag=field_ender_tier2_ar_2] at @s run data merge storage mikatanserver:ender_tagbox {"tag":["field_enderman_tier2_2"]}
execute if score $ender_tier2_2 spawn_count matches ..1 as @e[tag=field_ender_tier2_ar_2] at @s run function mikatanserver:adddim/area/ender_tier2/mob/enderman/spawn/main
execute store result score $ender_tier2_3 spawn_count if entity @e[tag=field_enderman_tier2_3]
execute if score $ender_tier2_3 spawn_count matches ..1 as @e[tag=field_ender_tier2_ar_3] at @s run data merge storage mikatanserver:ender_tagbox {"tag":["field_enderman_tier2_3"]}
execute if score $ender_tier2_3 spawn_count matches ..1 as @e[tag=field_ender_tier2_ar_3] at @s run function mikatanserver:adddim/area/ender_tier2/mob/enderman/spawn/main
execute store result score $ender_tier2_4 spawn_count if entity @e[tag=field_enderman_tier2_4]
execute if score $ender_tier2_4 spawn_count matches ..1 as @e[tag=field_ender_tier2_ar_4] at @s run data merge storage mikatanserver:ender_tagbox {"tag":["field_enderman_tier2_4"]}
execute if score $ender_tier2_4 spawn_count matches ..1 as @e[tag=field_ender_tier2_ar_4] at @s run function mikatanserver:adddim/area/ender_tier2/mob/enderman/spawn/main
execute store result score $ender_tier2_5 spawn_count if entity @e[tag=field_enderman_tier2_5]
execute if score $ender_tier2_5 spawn_count matches ..1 as @e[tag=field_ender_tier2_ar_5] at @s run data merge storage mikatanserver:ender_tagbox {"tag":["field_enderman_tier2_5"]}
execute if score $ender_tier2_5 spawn_count matches ..1 as @e[tag=field_ender_tier2_ar_5] at @s run function mikatanserver:adddim/area/ender_tier2/mob/enderman/spawn/main
execute store result score $ender_tier2_6 spawn_count if entity @e[tag=field_enderman_tier2_6]
execute if score $ender_tier2_6 spawn_count matches ..1 as @e[tag=field_ender_tier2_ar_6] at @s run data merge storage mikatanserver:ender_tagbox {"tag":["field_enderman_tier2_6"]}
execute if score $ender_tier2_6 spawn_count matches ..1 as @e[tag=field_ender_tier2_ar_6] at @s run function mikatanserver:adddim/area/ender_tier2/mob/enderman/spawn/main
execute store result score $ender_tier2_7 spawn_count if entity @e[tag=field_enderman_tier2_7]
execute if score $ender_tier2_7 spawn_count matches ..1 as @e[tag=field_ender_tier2_ar_7] at @s run data merge storage mikatanserver:ender_tagbox {"tag":["field_enderman_tier2_7"]}
execute if score $ender_tier2_7 spawn_count matches ..1 as @e[tag=field_ender_tier2_ar_7] at @s run function mikatanserver:adddim/area/ender_tier2/mob/enderman/spawn/main
execute store result score $ender_tier2_8 spawn_count if entity @e[tag=field_enderman_tier2_8]
execute if score $ender_tier2_8 spawn_count matches ..1 as @e[tag=field_ender_tier2_ar_8] at @s run data merge storage mikatanserver:ender_tagbox {"tag":["field_enderman_tier2_8"]}
execute if score $ender_tier2_8 spawn_count matches ..1 as @e[tag=field_ender_tier2_ar_8] at @s run function mikatanserver:adddim/area/ender_tier2/mob/enderman/spawn/main
execute store result score $ender_tier2_9 spawn_count if entity @e[tag=field_enderman_tier2_9]
execute if score $ender_tier2_9 spawn_count matches ..1 as @e[tag=field_ender_tier2_ar_9] at @s run data merge storage mikatanserver:ender_tagbox {"tag":["field_enderman_tier2_9"]}
execute if score $ender_tier2_9 spawn_count matches ..1 as @e[tag=field_ender_tier2_ar_9] at @s run function mikatanserver:adddim/area/ender_tier2/mob/enderman/spawn/main
execute store result score $ender_tier2_10 spawn_count if entity @e[tag=field_enderman_tier2_10]
execute if score $ender_tier2_10 spawn_count matches ..1 as @e[tag=field_ender_tier2_ar_10] at @s run data merge storage mikatanserver:ender_tagbox {"tag":["field_enderman_tier2_10"]}
execute if score $ender_tier2_10 spawn_count matches ..1 as @e[tag=field_ender_tier2_ar_10] at @s run function mikatanserver:adddim/area/ender_tier2/mob/enderman/spawn/main
execute store result score $ender_tier2_11 spawn_count if entity @e[tag=field_enderman_tier2_11]
execute if score $ender_tier2_11 spawn_count matches ..1 as @e[tag=field_ender_tier2_ar_11] at @s run data merge storage mikatanserver:ender_tagbox {"tag":["field_enderman_tier2_11"]}
execute if score $ender_tier2_11 spawn_count matches ..1 as @e[tag=field_ender_tier2_ar_11] at @s run function mikatanserver:adddim/area/ender_tier2/mob/enderman/spawn/main
execute store result score $ender_tier2_12 spawn_count if entity @e[tag=field_enderman_tier2_12]
execute if score $ender_tier2_12 spawn_count matches ..1 as @e[tag=field_ender_tier2_ar_12] at @s run data merge storage mikatanserver:ender_tagbox {"tag":["field_enderman_tier2_12"]}
execute if score $ender_tier2_12 spawn_count matches ..1 as @e[tag=field_ender_tier2_ar_12] at @s run function mikatanserver:adddim/area/ender_tier2/mob/enderman/spawn/main
execute store result score $ender_tier2_13 spawn_count if entity @e[tag=field_enderman_tier2_13]
execute if score $ender_tier2_13 spawn_count matches ..1 as @e[tag=field_ender_tier2_ar_13] at @s run data merge storage mikatanserver:ender_tagbox {"tag":["field_enderman_tier2_13"]}
execute if score $ender_tier2_13 spawn_count matches ..1 as @e[tag=field_ender_tier2_ar_13] at @s run function mikatanserver:adddim/area/ender_tier2/mob/enderman/spawn/main
execute store result score $ender_tier2_14 spawn_count if entity @e[tag=field_enderman_tier2_14]
execute if score $ender_tier2_14 spawn_count matches ..1 as @e[tag=field_ender_tier2_ar_14] at @s run data merge storage mikatanserver:ender_tagbox {"tag":["field_enderman_tier2_14"]}
execute if score $ender_tier2_14 spawn_count matches ..1 as @e[tag=field_ender_tier2_ar_14] at @s run function mikatanserver:adddim/area/ender_tier2/mob/enderman/spawn/main
execute store result score $ender_tier2_15 spawn_count if entity @e[tag=field_enderman_tier2_15]
execute if score $ender_tier2_15 spawn_count matches ..1 as @e[tag=field_ender_tier2_ar_15] at @s run data merge storage mikatanserver:ender_tagbox {"tag":["field_enderman_tier2_15"]}
execute if score $ender_tier2_15 spawn_count matches ..1 as @e[tag=field_ender_tier2_ar_15] at @s run function mikatanserver:adddim/area/ender_tier2/mob/enderman/spawn/main
execute store result score $ender_tier2_16 spawn_count if entity @e[tag=field_enderman_tier2_16]
execute if score $ender_tier2_16 spawn_count matches ..1 as @e[tag=field_ender_tier2_ar_16] at @s run data merge storage mikatanserver:ender_tagbox {"tag":["field_enderman_tier2_16"]}
execute if score $ender_tier2_16 spawn_count matches ..1 as @e[tag=field_ender_tier2_ar_16] at @s run function mikatanserver:adddim/area/ender_tier2/mob/enderman/spawn/main
execute store result score $ender_tier2_17 spawn_count if entity @e[tag=field_enderman_tier2_17]
execute if score $ender_tier2_17 spawn_count matches ..1 as @e[tag=field_ender_tier2_ar_17] at @s run data merge storage mikatanserver:ender_tagbox {"tag":["field_enderman_tier2_17"]}
execute if score $ender_tier2_17 spawn_count matches ..1 as @e[tag=field_ender_tier2_ar_17] at @s run function mikatanserver:adddim/area/ender_tier2/mob/enderman/spawn/main

scoreboard players reset $ender_tier2_1 spawn_count
scoreboard players reset $ender_tier2_2 spawn_count
scoreboard players reset $ender_tier2_3 spawn_count
scoreboard players reset $ender_tier2_4 spawn_count
scoreboard players reset $ender_tier2_5 spawn_count
scoreboard players reset $ender_tier2_6 spawn_count
scoreboard players reset $ender_tier2_7 spawn_count
scoreboard players reset $ender_tier2_8 spawn_count
scoreboard players reset $ender_tier2_9 spawn_count
scoreboard players reset $ender_tier2_10 spawn_count
scoreboard players reset $ender_tier2_11 spawn_count
scoreboard players reset $ender_tier2_12 spawn_count
scoreboard players reset $ender_tier2_13 spawn_count
scoreboard players reset $ender_tier2_14 spawn_count
scoreboard players reset $ender_tier2_15 spawn_count
scoreboard players reset $ender_tier2_16 spawn_count
scoreboard players reset $ender_tier2_17 spawn_count