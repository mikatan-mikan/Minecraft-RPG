##mikatanserver:adddim/area/skeleton/mob/skeleton/spawn/main 関数は 自身の座標と0-6の乱数を足したものから3を引いた場所にスポーンさせる関数(自身の周囲7*7)

execute store result score $skeleton_tier2_1 spawn_count if entity @e[tag=field_skeleton_tier2_1]
execute if score $skeleton_tier2_1 spawn_count matches ..1 as @e[tag=field_skeleton_tier2_ar_1] at @s run data merge storage mikatanserver:tagbox {"tag":["field_skeleton_tier2_1"]}
execute if score $skeleton_tier2_1 spawn_count matches ..1 as @e[tag=field_skeleton_tier2_ar_1] at @s run function mikatanserver:adddim/area/ender_tier2/mob/skeleton/spawn/main
execute store result score $skeleton_tier2_2 spawn_count if entity @e[tag=field_skeleton_tier2_2]
execute if score $skeleton_tier2_2 spawn_count matches ..1 as @e[tag=field_skeleton_tier2_ar_2] at @s run data merge storage mikatanserver:tagbox {"tag":["field_skeleton_tier2_2"]}
execute if score $skeleton_tier2_2 spawn_count matches ..1 as @e[tag=field_skeleton_tier2_ar_2] at @s run function mikatanserver:adddim/area/ender_tier2/mob/skeleton/spawn/main
execute store result score $skeleton_tier2_3 spawn_count if entity @e[tag=field_skeleton_tier2_3]
execute if score $skeleton_tier2_3 spawn_count matches ..1 as @e[tag=field_skeleton_tier2_ar_3] at @s run data merge storage mikatanserver:tagbox {"tag":["field_skeleton_tier2_3"]}
execute if score $skeleton_tier2_3 spawn_count matches ..1 as @e[tag=field_skeleton_tier2_ar_3] at @s run function mikatanserver:adddim/area/ender_tier2/mob/skeleton/spawn/main
execute store result score $skeleton_tier2_4 spawn_count if entity @e[tag=field_skeleton_tier2_4]
execute if score $skeleton_tier2_4 spawn_count matches ..1 as @e[tag=field_skeleton_tier2_ar_4] at @s run data merge storage mikatanserver:tagbox {"tag":["field_skeleton_tier2_4"]}
execute if score $skeleton_tier2_4 spawn_count matches ..1 as @e[tag=field_skeleton_tier2_ar_4] at @s run function mikatanserver:adddim/area/ender_tier2/mob/skeleton/spawn/main
execute store result score $skeleton_tier2_5 spawn_count if entity @e[tag=field_skeleton_tier2_5]
execute if score $skeleton_tier2_5 spawn_count matches ..1 as @e[tag=field_skeleton_tier2_ar_5] at @s run data merge storage mikatanserver:tagbox {"tag":["field_skeleton_tier2_5"]}
execute if score $skeleton_tier2_5 spawn_count matches ..1 as @e[tag=field_skeleton_tier2_ar_5] at @s run function mikatanserver:adddim/area/ender_tier2/mob/skeleton/spawn/main

scoreboard players reset $skeleton_tier2_1 spawn_count
scoreboard players reset $skeleton_tier2_2 spawn_count
scoreboard players reset $skeleton_tier2_3 spawn_count
scoreboard players reset $skeleton_tier2_4 spawn_count
scoreboard players reset $skeleton_tier2_5 spawn_count