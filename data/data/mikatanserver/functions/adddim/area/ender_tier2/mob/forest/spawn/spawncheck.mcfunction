##mikatanserver:adddim/area/forest/mob/forest/spawn/main 関数は 自身の座標と0-6の乱数を足したものから3を引いた場所にスポーンさせる関数(自身の周囲7*7)
##field_ender2_forest_ar_1
execute store result score $ender2_forest_1 spawn_count if entity @e[tag=field_ender2_forest_1]
execute if score $ender2_forest_1 spawn_count matches ..1 as @e[tag=field_ender2_forest_ar_1] at @s run data merge storage mikatanserver:tagbox {"tag":["field_ender2_forest_1"]}
execute if score $ender2_forest_1 spawn_count matches ..1 as @e[tag=field_ender2_forest_ar_1] at @s run function mikatanserver:adddim/area/ender_tier2/mob/forest/spawn/main
execute store result score $ender2_forest_2 spawn_count if entity @e[tag=field_ender2_forest_2]
execute if score $ender2_forest_2 spawn_count matches ..1 as @e[tag=field_ender2_forest_ar_2] at @s run data merge storage mikatanserver:tagbox {"tag":["field_ender2_forest_2"]}
execute if score $ender2_forest_2 spawn_count matches ..1 as @e[tag=field_ender2_forest_ar_2] at @s run function mikatanserver:adddim/area/ender_tier2/mob/forest/spawn/main
execute store result score $ender2_forest_3 spawn_count if entity @e[tag=field_ender2_forest_3]
execute if score $ender2_forest_3 spawn_count matches ..1 as @e[tag=field_ender2_forest_ar_3] at @s run data merge storage mikatanserver:tagbox {"tag":["field_ender2_forest_3"]}
execute if score $ender2_forest_3 spawn_count matches ..1 as @e[tag=field_ender2_forest_ar_3] at @s run function mikatanserver:adddim/area/ender_tier2/mob/forest/spawn/main
execute store result score $ender2_forest_4 spawn_count if entity @e[tag=field_ender2_forest_4]
execute if score $ender2_forest_4 spawn_count matches ..1 as @e[tag=field_ender2_forest_ar_4] at @s run data merge storage mikatanserver:tagbox {"tag":["field_ender2_forest_4"]}
execute if score $ender2_forest_4 spawn_count matches ..1 as @e[tag=field_ender2_forest_ar_4] at @s run function mikatanserver:adddim/area/ender_tier2/mob/forest/spawn/main
execute store result score $ender2_forest_5 spawn_count if entity @e[tag=field_ender2_forest_5]
execute if score $ender2_forest_5 spawn_count matches ..1 as @e[tag=field_ender2_forest_ar_5] at @s run data merge storage mikatanserver:tagbox {"tag":["field_ender2_forest_5"]}
execute if score $ender2_forest_5 spawn_count matches ..1 as @e[tag=field_ender2_forest_ar_5] at @s run function mikatanserver:adddim/area/ender_tier2/mob/forest/spawn/main
execute store result score $ender2_forest_6 spawn_count if entity @e[tag=field_ender2_forest_6]
execute if score $ender2_forest_6 spawn_count matches ..1 as @e[tag=field_ender2_forest_ar_6] at @s run data merge storage mikatanserver:tagbox {"tag":["field_ender2_forest_6"]}
execute if score $ender2_forest_6 spawn_count matches ..1 as @e[tag=field_ender2_forest_ar_6] at @s run function mikatanserver:adddim/area/ender_tier2/mob/forest/spawn/main
execute store result score $ender2_forest_7 spawn_count if entity @e[tag=field_ender2_forest_7]
execute if score $ender2_forest_7 spawn_count matches ..1 as @e[tag=field_ender2_forest_ar_7] at @s run data merge storage mikatanserver:tagbox {"tag":["field_ender2_forest_7"]}
execute if score $ender2_forest_7 spawn_count matches ..1 as @e[tag=field_ender2_forest_ar_7] at @s run function mikatanserver:adddim/area/ender_tier2/mob/forest/spawn/main
execute store result score $ender2_forest_8 spawn_count if entity @e[tag=field_ender2_forest_8]
execute if score $ender2_forest_8 spawn_count matches ..1 as @e[tag=field_ender2_forest_ar_8] at @s run data merge storage mikatanserver:tagbox {"tag":["field_ender2_forest_8"]}
execute if score $ender2_forest_8 spawn_count matches ..1 as @e[tag=field_ender2_forest_ar_8] at @s run function mikatanserver:adddim/area/ender_tier2/mob/forest/spawn/main

scoreboard players reset $ender2_forest_1 spawn_count
scoreboard players reset $ender2_forest_2 spawn_count
scoreboard players reset $ender2_forest_3 spawn_count
scoreboard players reset $ender2_forest_4 spawn_count
scoreboard players reset $ender2_forest_5 spawn_count
scoreboard players reset $ender2_forest_6 spawn_count
scoreboard players reset $ender2_forest_7 spawn_count
scoreboard players reset $ender2_forest_8 spawn_count