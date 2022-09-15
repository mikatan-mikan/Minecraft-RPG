##mikatanserver:adddim/area/ruins/mob/zombie/spawn/main 関数は 自身の座標と0-6の乱数を足したものから3を引いた場所にスポーンさせる関数(自身の周囲7*7)

execute store result score $ru_zombie1 spawn_count if entity @e[tag=field_ruins_zombie_1]
execute if score $ru_zombie1 spawn_count matches ..1 as @e[tag=field_ruins_zombie_ar_1] at @s run data merge storage mikatanserver:tagbox {"tag":["field_ruins_zombie_1"]}
execute if score $ru_zombie1 spawn_count matches ..1 as @e[tag=field_ruins_zombie_ar_1] at @s run function mikatanserver:adddim/area/ruins/mob/zombie/spawn/main
execute store result score $ru_zombie2 spawn_count if entity @e[tag=field_ruins_zombie_2]
execute if score $ru_zombie2 spawn_count matches ..1 as @e[tag=field_ruins_zombie_ar_2] at @s run data merge storage mikatanserver:tagbox {"tag":["field_ruins_zombie_2"]}
execute if score $ru_zombie2 spawn_count matches ..1 as @e[tag=field_ruins_zombie_ar_2] at @s run function mikatanserver:adddim/area/ruins/mob/zombie/spawn/main
execute store result score $ru_zombie3 spawn_count if entity @e[tag=field_ruins_zombie_3]
execute if score $ru_zombie3 spawn_count matches ..1 as @e[tag=field_ruins_zombie_ar_3] at @s run data merge storage mikatanserver:tagbox {"tag":["field_ruins_zombie_3"]}
execute if score $ru_zombie3 spawn_count matches ..1 as @e[tag=field_ruins_zombie_ar_3] at @s run function mikatanserver:adddim/area/ruins/mob/zombie/spawn/main
execute store result score $ru_zombie4 spawn_count if entity @e[tag=field_ruins_zombie_4]
execute if score $ru_zombie4 spawn_count matches ..1 as @e[tag=field_ruins_zombie_ar_4] at @s run data merge storage mikatanserver:tagbox {"tag":["field_ruins_zombie_4"]}
execute if score $ru_zombie4 spawn_count matches ..1 as @e[tag=field_ruins_zombie_ar_4] at @s run function mikatanserver:adddim/area/ruins/mob/zombie/spawn/main
execute store result score $ru_zombie5 spawn_count if entity @e[tag=field_ruins_zombie_5]
execute if score $ru_zombie5 spawn_count matches ..1 as @e[tag=field_ruins_zombie_ar_5] at @s run data merge storage mikatanserver:tagbox {"tag":["field_ruins_zombie_5"]}
execute if score $ru_zombie5 spawn_count matches ..1 as @e[tag=field_ruins_zombie_ar_5] at @s run function mikatanserver:adddim/area/ruins/mob/zombie/spawn/main
execute store result score $ru_zombie6 spawn_count if entity @e[tag=field_ruins_zombie_6]
execute if score $ru_zombie6 spawn_count matches ..1 as @e[tag=field_ruins_zombie_ar_6] at @s run data merge storage mikatanserver:tagbox {"tag":["field_ruins_zombie_6"]}
execute if score $ru_zombie6 spawn_count matches ..1 as @e[tag=field_ruins_zombie_ar_6] at @s run function mikatanserver:adddim/area/ruins/mob/zombie/spawn/main
execute store result score $ru_zombie7 spawn_count if entity @e[tag=field_ruins_zombie_7]
execute if score $ru_zombie7 spawn_count matches ..1 as @e[tag=field_ruins_zombie_ar_7] at @s run data merge storage mikatanserver:tagbox {"tag":["field_ruins_zombie_7"]}
execute if score $ru_zombie7 spawn_count matches ..1 as @e[tag=field_ruins_zombie_ar_7] at @s run function mikatanserver:adddim/area/ruins/mob/zombie/spawn/main
execute store result score $ru_zombie8 spawn_count if entity @e[tag=field_ruins_zombie_8]
execute if score $ru_zombie8 spawn_count matches ..1 as @e[tag=field_ruins_zombie_ar_8] at @s run data merge storage mikatanserver:tagbox {"tag":["field_ruins_zombie_8"]}
execute if score $ru_zombie8 spawn_count matches ..1 as @e[tag=field_ruins_zombie_ar_8] at @s run function mikatanserver:adddim/area/ruins/mob/zombie/spawn/main
execute store result score $ru_zombie9 spawn_count if entity @e[tag=field_ruins_zombie_9]
execute if score $ru_zombie9 spawn_count matches ..1 as @e[tag=field_ruins_zombie_ar_9] at @s run data merge storage mikatanserver:tagbox {"tag":["field_ruins_zombie_9"]}
execute if score $ru_zombie9 spawn_count matches ..1 as @e[tag=field_ruins_zombie_ar_9] at @s run function mikatanserver:adddim/area/ruins/mob/zombie/spawn/main
execute store result score $ru_zombie10 spawn_count if entity @e[tag=field_ruins_zombie_10]
execute if score $ru_zombie10 spawn_count matches ..1 as @e[tag=field_ruins_zombie_ar_10] at @s run data merge storage mikatanserver:tagbox {"tag":["field_ruins_zombie_10"]}
execute if score $ru_zombie10 spawn_count matches ..1 as @e[tag=field_ruins_zombie_ar_10] at @s run function mikatanserver:adddim/area/ruins/mob/zombie/spawn/main
execute store result score $ru_zombie11 spawn_count if entity @e[tag=field_ruins_zombie_11]
execute if score $ru_zombie11 spawn_count matches ..1 as @e[tag=field_ruins_zombie_ar_11] at @s run data merge storage mikatanserver:tagbox {"tag":["field_ruins_zombie_11"]}
execute if score $ru_zombie11 spawn_count matches ..1 as @e[tag=field_ruins_zombie_ar_11] at @s run function mikatanserver:adddim/area/ruins/mob/zombie/spawn/main
execute store result score $ru_zombie12 spawn_count if entity @e[tag=field_ruins_zombie_12]
execute if score $ru_zombie12 spawn_count matches ..1 as @e[tag=field_ruins_zombie_ar_12] at @s run data merge storage mikatanserver:tagbox {"tag":["field_ruins_zombie_12"]}
execute if score $ru_zombie12 spawn_count matches ..1 as @e[tag=field_ruins_zombie_ar_12] at @s run function mikatanserver:adddim/area/ruins/mob/zombie/spawn/main
execute store result score $ru_zombie13 spawn_count if entity @e[tag=field_ruins_zombie_13]
execute if score $ru_zombie13 spawn_count matches ..1 as @e[tag=field_ruins_zombie_ar_13] at @s run data merge storage mikatanserver:tagbox {"tag":["field_ruins_zombie_13"]}
execute if score $ru_zombie13 spawn_count matches ..1 as @e[tag=field_ruins_zombie_ar_13] at @s run function mikatanserver:adddim/area/ruins/mob/zombie/spawn/main
execute store result score $ru_zombie14 spawn_count if entity @e[tag=field_ruins_zombie_14]
execute if score $ru_zombie14 spawn_count matches ..1 as @e[tag=field_ruins_zombie_ar_14] at @s run data merge storage mikatanserver:tagbox {"tag":["field_ruins_zombie_14"]}
execute if score $ru_zombie14 spawn_count matches ..1 as @e[tag=field_ruins_zombie_ar_14] at @s run function mikatanserver:adddim/area/ruins/mob/zombie/spawn/main
execute store result score $ru_zombie15 spawn_count if entity @e[tag=field_ruins_zombie_15]
execute if score $ru_zombie15 spawn_count matches ..1 as @e[tag=field_ruins_zombie_ar_15] at @s run data merge storage mikatanserver:tagbox {"tag":["field_ruins_zombie_15"]}
execute if score $ru_zombie15 spawn_count matches ..1 as @e[tag=field_ruins_zombie_ar_15] at @s run function mikatanserver:adddim/area/ruins/mob/zombie/spawn/main
execute store result score $ru_zombie16 spawn_count if entity @e[tag=field_ruins_zombie_16]
execute if score $ru_zombie16 spawn_count matches ..1 as @e[tag=field_ruins_zombie_ar_16] at @s run data merge storage mikatanserver:tagbox {"tag":["field_ruins_zombie_16"]}
execute if score $ru_zombie16 spawn_count matches ..1 as @e[tag=field_ruins_zombie_ar_16] at @s run function mikatanserver:adddim/area/ruins/mob/zombie/spawn/main

scoreboard players reset $ru_zombie1 spawn_count
scoreboard players reset $ru_zombie2 spawn_count
scoreboard players reset $ru_zombie3 spawn_count
scoreboard players reset $ru_zombie4 spawn_count
scoreboard players reset $ru_zombie5 spawn_count
scoreboard players reset $ru_zombie6 spawn_count
scoreboard players reset $ru_zombie7 spawn_count
scoreboard players reset $ru_zombie8 spawn_count
scoreboard players reset $ru_zombie9 spawn_count
scoreboard players reset $ru_zombie10 spawn_count
scoreboard players reset $ru_zombie11 spawn_count
scoreboard players reset $ru_zombie12 spawn_count
scoreboard players reset $ru_zombie13 spawn_count
scoreboard players reset $ru_zombie14 spawn_count
scoreboard players reset $ru_zombie15 spawn_count
scoreboard players reset $ru_zombie16 spawn_count
scoreboard players reset $ru_zombie17 spawn_count