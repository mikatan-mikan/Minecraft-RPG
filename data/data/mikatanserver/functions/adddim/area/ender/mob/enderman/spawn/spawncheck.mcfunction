##mikatanserver:adddim/area/ender/mob/enderman/spawn/main 関数は 自身の座標と0-6の乱数を足したものから3を引いた場所にスポーンさせる関数(自身の周囲7*7)

execute store result score $ender1 spawn_count if entity @e[tag=field_enderman_1]
execute if score $ender1 spawn_count matches ..1 as @e[tag=field_ender_ar_1] at @s run data merge storage mikatanserver:ender_tagbox {"tag":["field_enderman_1"]}
execute if score $ender1 spawn_count matches ..1 as @e[tag=field_ender_ar_1] at @s run function mikatanserver:adddim/area/ender/mob/enderman/spawn/main
execute store result score $ender2 spawn_count if entity @e[tag=field_enderman_2]
execute if score $ender2 spawn_count matches ..1 as @e[tag=field_ender_ar_2] at @s run data merge storage mikatanserver:ender_tagbox {"tag":["field_enderman_2"]}
execute if score $ender2 spawn_count matches ..1 as @e[tag=field_ender_ar_2] at @s run function mikatanserver:adddim/area/ender/mob/enderman/spawn/main
execute store result score $ender3 spawn_count if entity @e[tag=field_enderman_3]
execute if score $ender3 spawn_count matches ..1 as @e[tag=field_ender_ar_3] at @s run data merge storage mikatanserver:ender_tagbox {"tag":["field_enderman_3"]}
execute if score $ender3 spawn_count matches ..1 as @e[tag=field_ender_ar_3] at @s run function mikatanserver:adddim/area/ender/mob/enderman/spawn/main
execute store result score $ender4 spawn_count if entity @e[tag=field_enderman_4]
execute if score $ender4 spawn_count matches ..1 as @e[tag=field_ender_ar_4] at @s run data merge storage mikatanserver:ender_tagbox {"tag":["field_enderman_4"]}
execute if score $ender4 spawn_count matches ..1 as @e[tag=field_ender_ar_4] at @s run function mikatanserver:adddim/area/ender/mob/enderman/spawn/main
execute store result score $ender5 spawn_count if entity @e[tag=field_enderman_5]
execute if score $ender5 spawn_count matches ..1 as @e[tag=field_ender_ar_5] at @s run data merge storage mikatanserver:ender_tagbox {"tag":["field_enderman_5"]}
execute if score $ender5 spawn_count matches ..1 as @e[tag=field_ender_ar_5] at @s run function mikatanserver:adddim/area/ender/mob/enderman/spawn/main
execute store result score $ender6 spawn_count if entity @e[tag=field_enderman_6]
execute if score $ender6 spawn_count matches ..1 as @e[tag=field_ender_ar_6] at @s run data merge storage mikatanserver:ender_tagbox {"tag":["field_enderman_6"]}
execute if score $ender6 spawn_count matches ..1 as @e[tag=field_ender_ar_6] at @s run function mikatanserver:adddim/area/ender/mob/enderman/spawn/main
execute store result score $ender7 spawn_count if entity @e[tag=field_enderman_7]
execute if score $ender7 spawn_count matches ..1 as @e[tag=field_ender_ar_7] at @s run data merge storage mikatanserver:ender_tagbox {"tag":["field_enderman_7"]}
execute if score $ender7 spawn_count matches ..1 as @e[tag=field_ender_ar_7] at @s run function mikatanserver:adddim/area/ender/mob/enderman/spawn/main
execute store result score $ender8 spawn_count if entity @e[tag=field_enderman_8]
execute if score $ender8 spawn_count matches ..1 as @e[tag=field_ender_ar_8] at @s run data merge storage mikatanserver:ender_tagbox {"tag":["field_enderman_8"]}
execute if score $ender8 spawn_count matches ..1 as @e[tag=field_ender_ar_8] at @s run function mikatanserver:adddim/area/ender/mob/enderman/spawn/main
execute store result score $ender9 spawn_count if entity @e[tag=field_enderman_9]
execute if score $ender9 spawn_count matches ..1 as @e[tag=field_ender_ar_9] at @s run data merge storage mikatanserver:ender_tagbox {"tag":["field_enderman_9"]}
execute if score $ender9 spawn_count matches ..1 as @e[tag=field_ender_ar_9] at @s run function mikatanserver:adddim/area/ender/mob/enderman/spawn/main
execute store result score $ender10 spawn_count if entity @e[tag=field_enderman_10]
execute if score $ender10 spawn_count matches ..1 as @e[tag=field_ender_ar_10] at @s run data merge storage mikatanserver:ender_tagbox {"tag":["field_enderman_10"]}
execute if score $ender10 spawn_count matches ..1 as @e[tag=field_ender_ar_10] at @s run function mikatanserver:adddim/area/ender/mob/enderman/spawn/main
execute store result score $ender11 spawn_count if entity @e[tag=field_enderman_11]
execute if score $ender11 spawn_count matches ..1 as @e[tag=field_ender_ar_11] at @s run data merge storage mikatanserver:ender_tagbox {"tag":["field_enderman_11"]}
execute if score $ender11 spawn_count matches ..1 as @e[tag=field_ender_ar_11] at @s run function mikatanserver:adddim/area/ender/mob/enderman/spawn/main
execute store result score $ender12 spawn_count if entity @e[tag=field_enderman_12]
execute if score $ender12 spawn_count matches ..1 as @e[tag=field_ender_ar_12] at @s run data merge storage mikatanserver:ender_tagbox {"tag":["field_enderman_12"]}
execute if score $ender12 spawn_count matches ..1 as @e[tag=field_ender_ar_12] at @s run function mikatanserver:adddim/area/ender/mob/enderman/spawn/main
execute store result score $ender13 spawn_count if entity @e[tag=field_enderman_13]
execute if score $ender13 spawn_count matches ..1 as @e[tag=field_ender_ar_13] at @s run data merge storage mikatanserver:ender_tagbox {"tag":["field_enderman_13"]}
execute if score $ender13 spawn_count matches ..1 as @e[tag=field_ender_ar_13] at @s run function mikatanserver:adddim/area/ender/mob/enderman/spawn/main
execute store result score $ender14 spawn_count if entity @e[tag=field_enderman_14]
execute if score $ender14 spawn_count matches ..1 as @e[tag=field_ender_ar_14] at @s run data merge storage mikatanserver:ender_tagbox {"tag":["field_enderman_14"]}
execute if score $ender14 spawn_count matches ..1 as @e[tag=field_ender_ar_14] at @s run function mikatanserver:adddim/area/ender/mob/enderman/spawn/main
execute store result score $ender15 spawn_count if entity @e[tag=field_enderman_15]
execute if score $ender15 spawn_count matches ..1 as @e[tag=field_ender_ar_15] at @s run data merge storage mikatanserver:ender_tagbox {"tag":["field_enderman_15"]}
execute if score $ender15 spawn_count matches ..1 as @e[tag=field_ender_ar_15] at @s run function mikatanserver:adddim/area/ender/mob/enderman/spawn/main
execute store result score $ender16 spawn_count if entity @e[tag=field_enderman_16]
execute if score $ender16 spawn_count matches ..1 as @e[tag=field_ender_ar_16] at @s run data merge storage mikatanserver:ender_tagbox {"tag":["field_enderman_16"]}
execute if score $ender16 spawn_count matches ..1 as @e[tag=field_ender_ar_16] at @s run function mikatanserver:adddim/area/ender/mob/enderman/spawn/main
execute store result score $ender17 spawn_count if entity @e[tag=field_enderman_17]
execute if score $ender17 spawn_count matches ..1 as @e[tag=field_ender_ar_17] at @s run data merge storage mikatanserver:ender_tagbox {"tag":["field_enderman_17"]}
execute if score $ender17 spawn_count matches ..1 as @e[tag=field_ender_ar_17] at @s run function mikatanserver:adddim/area/ender/mob/enderman/spawn/main


scoreboard players reset $ender1 spawn_count
scoreboard players reset $ender2 spawn_count
scoreboard players reset $ender3 spawn_count
scoreboard players reset $ender4 spawn_count
scoreboard players reset $ender5 spawn_count
scoreboard players reset $ender6 spawn_count
scoreboard players reset $ender7 spawn_count
scoreboard players reset $ender8 spawn_count
scoreboard players reset $ender9 spawn_count
scoreboard players reset $ender10 spawn_count
scoreboard players reset $ender11 spawn_count
scoreboard players reset $ender12 spawn_count
scoreboard players reset $ender13 spawn_count
scoreboard players reset $ender14 spawn_count
scoreboard players reset $ender15 spawn_count
scoreboard players reset $ender16 spawn_count
scoreboard players reset $ender17 spawn_count