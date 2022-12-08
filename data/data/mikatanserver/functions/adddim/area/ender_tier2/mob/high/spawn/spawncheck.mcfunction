##mikatanserver:adddim/area/high/mob/high/spawn/main 関数は 自身の座標と0-6の乱数を足したものから3を引いた場所にスポーンさせる関数(自身の周囲7*7)
##field_ender2_high_ar_1
execute store result score $ender2_high_1 spawn_count if entity @e[tag=field_ender2_high_1]
execute if score $ender2_high_1 spawn_count matches ..1 as @e[tag=field_ender2_high_ar_1] at @s run data merge storage mikatanserver:tagbox {"tag":["field_ender2_high_1"]}
execute if score $ender2_high_1 spawn_count matches ..1 as @e[tag=field_ender2_high_ar_1] at @s run function mikatanserver:adddim/area/ender_tier2/mob/high/spawn/main
execute store result score $ender2_high_2 spawn_count if entity @e[tag=field_ender2_high_2]
execute if score $ender2_high_2 spawn_count matches ..1 as @e[tag=field_ender2_high_ar_2] at @s run data merge storage mikatanserver:tagbox {"tag":["field_ender2_high_2"]}
execute if score $ender2_high_2 spawn_count matches ..1 as @e[tag=field_ender2_high_ar_2] at @s run function mikatanserver:adddim/area/ender_tier2/mob/high/spawn/main
execute store result score $ender2_high_3 spawn_count if entity @e[tag=field_ender2_high_3]
execute if score $ender2_high_3 spawn_count matches ..1 as @e[tag=field_ender2_high_ar_3] at @s run data merge storage mikatanserver:tagbox {"tag":["field_ender2_high_3"]}
execute if score $ender2_high_3 spawn_count matches ..1 as @e[tag=field_ender2_high_ar_3] at @s run function mikatanserver:adddim/area/ender_tier2/mob/high/spawn/main
execute store result score $ender2_high_4 spawn_count if entity @e[tag=field_ender2_high_4]
execute if score $ender2_high_4 spawn_count matches ..1 as @e[tag=field_ender2_high_ar_4] at @s run data merge storage mikatanserver:tagbox {"tag":["field_ender2_high_4"]}
execute if score $ender2_high_4 spawn_count matches ..1 as @e[tag=field_ender2_high_ar_4] at @s run function mikatanserver:adddim/area/ender_tier2/mob/high/spawn/main
execute store result score $ender2_high_5 spawn_count if entity @e[tag=field_ender2_high_5]
execute if score $ender2_high_5 spawn_count matches ..1 as @e[tag=field_ender2_high_ar_5] at @s run data merge storage mikatanserver:tagbox {"tag":["field_ender2_high_5"]}
execute if score $ender2_high_5 spawn_count matches ..1 as @e[tag=field_ender2_high_ar_5] at @s run function mikatanserver:adddim/area/ender_tier2/mob/high/spawn/main
execute store result score $ender2_high_6 spawn_count if entity @e[tag=field_ender2_high_6]
execute if score $ender2_high_6 spawn_count matches ..1 as @e[tag=field_ender2_high_ar_6] at @s run data merge storage mikatanserver:tagbox {"tag":["field_ender2_high_6"]}
execute if score $ender2_high_6 spawn_count matches ..1 as @e[tag=field_ender2_high_ar_6] at @s run function mikatanserver:adddim/area/ender_tier2/mob/high/spawn/main
execute store result score $ender2_high_7 spawn_count if entity @e[tag=field_ender2_high_7]
execute if score $ender2_high_7 spawn_count matches ..1 as @e[tag=field_ender2_high_ar_7] at @s run data merge storage mikatanserver:tagbox {"tag":["field_ender2_high_7"]}
execute if score $ender2_high_7 spawn_count matches ..1 as @e[tag=field_ender2_high_ar_7] at @s run function mikatanserver:adddim/area/ender_tier2/mob/high/spawn/main
execute store result score $ender2_high_8 spawn_count if entity @e[tag=field_ender2_high_8]
execute if score $ender2_high_8 spawn_count matches ..1 as @e[tag=field_ender2_high_ar_8] at @s run data merge storage mikatanserver:tagbox {"tag":["field_ender2_high_8"]}
execute if score $ender2_high_8 spawn_count matches ..1 as @e[tag=field_ender2_high_ar_8] at @s run function mikatanserver:adddim/area/ender_tier2/mob/high/spawn/main
execute store result score $ender2_high_9 spawn_count if entity @e[tag=field_ender2_high_9]
execute if score $ender2_high_9 spawn_count matches ..1 as @e[tag=field_ender2_high_ar_9] at @s run data merge storage mikatanserver:tagbox {"tag":["field_ender2_high_9"]}
execute if score $ender2_high_9 spawn_count matches ..1 as @e[tag=field_ender2_high_ar_9] at @s run function mikatanserver:adddim/area/ender_tier2/mob/high/spawn/main

scoreboard players reset $ender2_high_1 spawn_count
scoreboard players reset $ender2_high_2 spawn_count
scoreboard players reset $ender2_high_3 spawn_count
scoreboard players reset $ender2_high_4 spawn_count
scoreboard players reset $ender2_high_5 spawn_count
scoreboard players reset $ender2_high_6 spawn_count
scoreboard players reset $ender2_high_7 spawn_count
scoreboard players reset $ender2_high_8 spawn_count
scoreboard players reset $ender2_high_9 spawn_count