##mikatanserver:adddim/area/cave/mob/zombie/spawn/main 関数は 自身の座標と0-6の乱数を足したものから3を引いた場所にスポーンさせる関数(自身の周囲7*7)

execute store result score $cave_zombie1 spawn_count if entity @e[tag=field_cave_zombie_1]
execute if score $cave_zombie1 spawn_count matches ..1 as @e[tag=field_cave_zombie_ar_1] at @s run data merge storage mikatanserver:tagbox {"tag":["field_cave_zombie_1"]}
execute if score $cave_zombie1 spawn_count matches ..1 as @e[tag=field_cave_zombie_ar_1] at @s run function mikatanserver:adddim/area/cave/mob/zombie/spawn/main
execute store result score $cave_zombie2 spawn_count if entity @e[tag=field_cave_zombie_2]
execute if score $cave_zombie2 spawn_count matches ..1 as @e[tag=field_cave_zombie_ar_2] at @s run data merge storage mikatanserver:tagbox {"tag":["field_cave_zombie_2"]}
execute if score $cave_zombie2 spawn_count matches ..1 as @e[tag=field_cave_zombie_ar_2] at @s run function mikatanserver:adddim/area/cave/mob/zombie/spawn/main
execute store result score $cave_zombie3 spawn_count if entity @e[tag=field_cave_zombie_3]
execute if score $cave_zombie3 spawn_count matches ..1 as @e[tag=field_cave_zombie_ar_3] at @s run data merge storage mikatanserver:tagbox {"tag":["field_cave_zombie_3"]}
execute if score $cave_zombie3 spawn_count matches ..1 as @e[tag=field_cave_zombie_ar_3] at @s run function mikatanserver:adddim/area/cave/mob/zombie/spawn/main
execute store result score $cave_zombie4 spawn_count if entity @e[tag=field_cave_zombie_4]
execute if score $cave_zombie4 spawn_count matches ..1 as @e[tag=field_cave_zombie_ar_4] at @s run data merge storage mikatanserver:tagbox {"tag":["field_cave_zombie_4"]}
execute if score $cave_zombie4 spawn_count matches ..1 as @e[tag=field_cave_zombie_ar_4] at @s run function mikatanserver:adddim/area/cave/mob/zombie/spawn/main
execute store result score $cave_zombie5 spawn_count if entity @e[tag=field_cave_zombie_5]
execute if score $cave_zombie5 spawn_count matches ..1 as @e[tag=field_cave_zombie_ar_5] at @s run data merge storage mikatanserver:tagbox {"tag":["field_cave_zombie_5"]}
execute if score $cave_zombie5 spawn_count matches ..1 as @e[tag=field_cave_zombie_ar_5] at @s run function mikatanserver:adddim/area/cave/mob/zombie/spawn/main

execute store result score $cave_zombie6 spawn_count if entity @e[tag=field_cave_zombie_6]
execute if score $cave_zombie6 spawn_count matches ..1 as @e[tag=field_cave_zombie_ar_6] at @s run data merge storage mikatanserver:tagbox {"tag":["field_cave_zombie_6"]}
execute if score $cave_zombie6 spawn_count matches ..1 as @e[tag=field_cave_zombie_ar_6] at @s run function mikatanserver:adddim/area/cave/mob/zombie/spawn/main
execute store result score $cave_zombie7 spawn_count if entity @e[tag=field_cave_zombie_7]
execute if score $cave_zombie7 spawn_count matches ..1 as @e[tag=field_cave_zombie_ar_7] at @s run data merge storage mikatanserver:tagbox {"tag":["field_cave_zombie_7"]}
execute if score $cave_zombie7 spawn_count matches ..1 as @e[tag=field_cave_zombie_ar_7] at @s run function mikatanserver:adddim/area/cave/mob/zombie/spawn/main
execute store result score $cave_zombie8 spawn_count if entity @e[tag=field_cave_zombie_8]
execute if score $cave_zombie8 spawn_count matches ..1 as @e[tag=field_cave_zombie_ar_8] at @s run data merge storage mikatanserver:tagbox {"tag":["field_cave_zombie_8"]}
execute if score $cave_zombie8 spawn_count matches ..1 as @e[tag=field_cave_zombie_ar_8] at @s run function mikatanserver:adddim/area/cave/mob/zombie/spawn/main
execute store result score $cave_zombie9 spawn_count if entity @e[tag=field_cave_zombie_9]
execute if score $cave_zombie9 spawn_count matches ..1 as @e[tag=field_cave_zombie_ar_9] at @s run data merge storage mikatanserver:tagbox {"tag":["field_cave_zombie_9"]}
execute if score $cave_zombie9 spawn_count matches ..1 as @e[tag=field_cave_zombie_ar_9] at @s run function mikatanserver:adddim/area/cave/mob/zombie/spawn/main
execute store result score $cave_zombie10 spawn_count if entity @e[tag=field_cave_zombie_10]
execute if score $cave_zombie10 spawn_count matches ..1 as @e[tag=field_cave_zombie_ar_10] at @s run data merge storage mikatanserver:tagbox {"tag":["field_cave_zombie_10"]}
execute if score $cave_zombie10 spawn_count matches ..1 as @e[tag=field_cave_zombie_ar_10] at @s run function mikatanserver:adddim/area/cave/mob/zombie/spawn/main


execute store result score $cave_zombie11 spawn_count if entity @e[tag=field_cave_zombie_11]
execute if score $cave_zombie11 spawn_count matches ..1 as @e[tag=field_cave_zombie_ar_11] at @s run data merge storage mikatanserver:tagbox {"tag":["field_cave_zombie_11"]}
execute if score $cave_zombie11 spawn_count matches ..1 as @e[tag=field_cave_zombie_ar_11] at @s run function mikatanserver:adddim/area/cave/mob/zombie/spawn/main
execute store result score $cave_zombie12 spawn_count if entity @e[tag=field_cave_zombie_12]
execute if score $cave_zombie12 spawn_count matches ..1 as @e[tag=field_cave_zombie_ar_12] at @s run data merge storage mikatanserver:tagbox {"tag":["field_cave_zombie_12"]}
execute if score $cave_zombie12 spawn_count matches ..1 as @e[tag=field_cave_zombie_ar_12] at @s run function mikatanserver:adddim/area/cave/mob/zombie/spawn/main
execute store result score $cave_zombie13 spawn_count if entity @e[tag=field_cave_zombie_13]
execute if score $cave_zombie13 spawn_count matches ..1 as @e[tag=field_cave_zombie_ar_13] at @s run data merge storage mikatanserver:tagbox {"tag":["field_cave_zombie_13"]}
execute if score $cave_zombie13 spawn_count matches ..1 as @e[tag=field_cave_zombie_ar_13] at @s run function mikatanserver:adddim/area/cave/mob/zombie/spawn/main
execute store result score $cave_zombie14 spawn_count if entity @e[tag=field_cave_zombie_14]
execute if score $cave_zombie14 spawn_count matches ..1 as @e[tag=field_cave_zombie_ar_14] at @s run data merge storage mikatanserver:tagbox {"tag":["field_cave_zombie_14"]}
execute if score $cave_zombie14 spawn_count matches ..1 as @e[tag=field_cave_zombie_ar_14] at @s run function mikatanserver:adddim/area/cave/mob/zombie/spawn/main
execute store result score $cave_zombie15 spawn_count if entity @e[tag=field_cave_zombie_15]
execute if score $cave_zombie15 spawn_count matches ..1 as @e[tag=field_cave_zombie_ar_15] at @s run data merge storage mikatanserver:tagbox {"tag":["field_cave_zombie_15"]}
execute if score $cave_zombie15 spawn_count matches ..1 as @e[tag=field_cave_zombie_ar_15] at @s run function mikatanserver:adddim/area/cave/mob/zombie/spawn/main
execute store result score $cave_zombie16 spawn_count if entity @e[tag=field_cave_zombie_16]
execute if score $cave_zombie16 spawn_count matches ..1 as @e[tag=field_cave_zombie_ar_16] at @s run data merge storage mikatanserver:tagbox {"tag":["field_cave_zombie_16"]}
execute if score $cave_zombie16 spawn_count matches ..1 as @e[tag=field_cave_zombie_ar_16] at @s run function mikatanserver:adddim/area/cave/mob/zombie/spawn/main
execute store result score $cave_zombie17 spawn_count if entity @e[tag=field_cave_zombie_17]
execute if score $cave_zombie17 spawn_count matches ..1 as @e[tag=field_cave_zombie_ar_17] at @s run data merge storage mikatanserver:tagbox {"tag":["field_cave_zombie_17"]}
execute if score $cave_zombie17 spawn_count matches ..1 as @e[tag=field_cave_zombie_ar_17] at @s run function mikatanserver:adddim/area/cave/mob/zombie/spawn/main
execute store result score $cave_zombie18 spawn_count if entity @e[tag=field_cave_zombie_18]
execute if score $cave_zombie18 spawn_count matches ..1 as @e[tag=field_cave_zombie_ar_18] at @s run data merge storage mikatanserver:tagbox {"tag":["field_cave_zombie_18"]}
execute if score $cave_zombie18 spawn_count matches ..1 as @e[tag=field_cave_zombie_ar_18] at @s run function mikatanserver:adddim/area/cave/mob/zombie/spawn/main
execute store result score $cave_zombie19 spawn_count if entity @e[tag=field_cave_zombie_19]
execute if score $cave_zombie19 spawn_count matches ..1 as @e[tag=field_cave_zombie_ar_19] at @s run data merge storage mikatanserver:tagbox {"tag":["field_cave_zombie_19"]}
execute if score $cave_zombie19 spawn_count matches ..1 as @e[tag=field_cave_zombie_ar_19] at @s run function mikatanserver:adddim/area/cave/mob/zombie/spawn/main
execute store result score $cave_zombie20 spawn_count if entity @e[tag=field_cave_zombie_20]
execute if score $cave_zombie20 spawn_count matches ..1 as @e[tag=field_cave_zombie_ar_20] at @s run data merge storage mikatanserver:tagbox {"tag":["field_cave_zombie_20"]}
execute if score $cave_zombie20 spawn_count matches ..1 as @e[tag=field_cave_zombie_ar_20] at @s run function mikatanserver:adddim/area/cave/mob/zombie/spawn/main
execute store result score $cave_zombie21 spawn_count if entity @e[tag=field_cave_zombie_21]
execute if score $cave_zombie21 spawn_count matches ..1 as @e[tag=field_cave_zombie_ar_21] at @s run data merge storage mikatanserver:tagbox {"tag":["field_cave_zombie_21"]}
execute if score $cave_zombie21 spawn_count matches ..1 as @e[tag=field_cave_zombie_ar_21] at @s run function mikatanserver:adddim/area/cave/mob/zombie/spawn/main
execute store result score $cave_zombie22 spawn_count if entity @e[tag=field_cave_zombie_22]
execute if score $cave_zombie22 spawn_count matches ..1 as @e[tag=field_cave_zombie_ar_22] at @s run data merge storage mikatanserver:tagbox {"tag":["field_cave_zombie_22"]}
execute if score $cave_zombie22 spawn_count matches ..1 as @e[tag=field_cave_zombie_ar_22] at @s run function mikatanserver:adddim/area/cave/mob/zombie/spawn/main
execute store result score $cave_zombie23 spawn_count if entity @e[tag=field_cave_zombie_23]
execute if score $cave_zombie23 spawn_count matches ..1 as @e[tag=field_cave_zombie_ar_23] at @s run data merge storage mikatanserver:tagbox {"tag":["field_cave_zombie_23"]}
execute if score $cave_zombie23 spawn_count matches ..1 as @e[tag=field_cave_zombie_ar_23] at @s run function mikatanserver:adddim/area/cave/mob/zombie/spawn/main
execute store result score $cave_zombie24 spawn_count if entity @e[tag=field_cave_zombie_24]
execute if score $cave_zombie24 spawn_count matches ..1 as @e[tag=field_cave_zombie_ar_24] at @s run data merge storage mikatanserver:tagbox {"tag":["field_cave_zombie_24"]}
execute if score $cave_zombie24 spawn_count matches ..1 as @e[tag=field_cave_zombie_ar_24] at @s run function mikatanserver:adddim/area/cave/mob/zombie/spawn/main

scoreboard players reset $cave_zombie1 spawn_count
scoreboard players reset $cave_zombie2 spawn_count
scoreboard players reset $cave_zombie3 spawn_count
scoreboard players reset $cave_zombie4 spawn_count
scoreboard players reset $cave_zombie5 spawn_count
scoreboard players reset $cave_zombie6 spawn_count
scoreboard players reset $cave_zombie7 spawn_count
scoreboard players reset $cave_zombie8 spawn_count
scoreboard players reset $cave_zombie9 spawn_count
scoreboard players reset $cave_zombie10 spawn_count
scoreboard players reset $cave_zombie11 spawn_count
scoreboard players reset $cave_zombie12 spawn_count
scoreboard players reset $cave_zombie13 spawn_count
scoreboard players reset $cave_zombie14 spawn_count
scoreboard players reset $cave_zombie15 spawn_count
scoreboard players reset $cave_zombie16 spawn_count
scoreboard players reset $cave_zombie17 spawn_count
scoreboard players reset $cave_zombie18 spawn_count
scoreboard players reset $cave_zombie19 spawn_count
scoreboard players reset $cave_zombie20 spawn_count
scoreboard players reset $cave_zombie21 spawn_count
scoreboard players reset $cave_zombie22 spawn_count
scoreboard players reset $cave_zombie23 spawn_count
scoreboard players reset $cave_zombie24 spawn_count