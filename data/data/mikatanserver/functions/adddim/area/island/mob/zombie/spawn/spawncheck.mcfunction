##mikatanserver:adddim/area/island_zombie/mob/island_zombie/spawn/main 関数は 自身の座標と0-6の乱数を足したものから3を引いた場所にスポーンさせる関数(自身の周囲7*7)

execute store result score $island_zombie1 spawn_count if entity @e[tag=field_island_zombie_1]
execute if score $island_zombie1 spawn_count matches 0 as @e[tag=field_island_zombie_ar_1] at @s run data merge storage mikatanserver:zombie_tagbox {"tag":["field_island_zombie_1"]}
execute if score $island_zombie1 spawn_count matches 0 as @e[tag=field_island_zombie_ar_1] at @s run function mikatanserver:adddim/area/island/mob/zombie/spawn/main
execute store result score $island_zombie2 spawn_count if entity @e[tag=field_island_zombie_2]
execute if score $island_zombie2 spawn_count matches 0 as @e[tag=field_island_zombie_ar_2] at @s run data merge storage mikatanserver:zombie_tagbox {"tag":["field_island_zombie_2"]}
execute if score $island_zombie2 spawn_count matches 0 as @e[tag=field_island_zombie_ar_2] at @s run function mikatanserver:adddim/area/island/mob/zombie/spawn/main
execute store result score $island_zombie3 spawn_count if entity @e[tag=field_island_zombie_3]
execute if score $island_zombie3 spawn_count matches 0 as @e[tag=field_island_zombie_ar_3] at @s run data merge storage mikatanserver:zombie_tagbox {"tag":["field_island_zombie_3"]}
execute if score $island_zombie3 spawn_count matches 0 as @e[tag=field_island_zombie_ar_3] at @s run function mikatanserver:adddim/area/island/mob/zombie/spawn/main
execute store result score $island_zombie4 spawn_count if entity @e[tag=field_island_zombie_4]
execute if score $island_zombie4 spawn_count matches 0 as @e[tag=field_island_zombie_ar_4] at @s run data merge storage mikatanserver:zombie_tagbox {"tag":["field_island_zombie_4"]}
execute if score $island_zombie4 spawn_count matches 0 as @e[tag=field_island_zombie_ar_4] at @s run function mikatanserver:adddim/area/island/mob/zombie/spawn/main
execute store result score $island_zombie5 spawn_count if entity @e[tag=field_island_zombie_5]
execute if score $island_zombie5 spawn_count matches 0 as @e[tag=field_island_zombie_ar_5] at @s run data merge storage mikatanserver:zombie_tagbox {"tag":["field_island_zombie_5"]}
execute if score $island_zombie5 spawn_count matches 0 as @e[tag=field_island_zombie_ar_5] at @s run function mikatanserver:adddim/area/island/mob/zombie/spawn/main

execute store result score $island_zombie6 spawn_count if entity @e[tag=field_island_zombie_6]
execute if score $island_zombie6 spawn_count matches 0 as @e[tag=field_island_zombie_ar_6] at @s run data merge storage mikatanserver:zombie_tagbox {"tag":["field_island_zombie_6"]}
execute if score $island_zombie6 spawn_count matches 0 as @e[tag=field_island_zombie_ar_6] at @s run function mikatanserver:adddim/area/island/mob/zombie/spawn/main
execute store result score $island_zombie7 spawn_count if entity @e[tag=field_island_zombie_7]
execute if score $island_zombie7 spawn_count matches 0 as @e[tag=field_island_zombie_ar_7] at @s run data merge storage mikatanserver:zombie_tagbox {"tag":["field_island_zombie_7"]}
execute if score $island_zombie7 spawn_count matches 0 as @e[tag=field_island_zombie_ar_7] at @s run function mikatanserver:adddim/area/island/mob/zombie/spawn/main
execute store result score $island_zombie8 spawn_count if entity @e[tag=field_island_zombie_8]
execute if score $island_zombie8 spawn_count matches 0 as @e[tag=field_island_zombie_ar_8] at @s run data merge storage mikatanserver:zombie_tagbox {"tag":["field_island_zombie_8"]}
execute if score $island_zombie8 spawn_count matches 0 as @e[tag=field_island_zombie_ar_8] at @s run function mikatanserver:adddim/area/island/mob/zombie/spawn/main
execute store result score $island_zombie9 spawn_count if entity @e[tag=field_island_zombie_9]
execute if score $island_zombie9 spawn_count matches 0 as @e[tag=field_island_zombie_ar_9] at @s run data merge storage mikatanserver:zombie_tagbox {"tag":["field_island_zombie_9"]}
execute if score $island_zombie9 spawn_count matches 0 as @e[tag=field_island_zombie_ar_9] at @s run function mikatanserver:adddim/area/island/mob/zombie/spawn/main
execute store result score $island_zombie10 spawn_count if entity @e[tag=field_island_zombie_10]
execute if score $island_zombie10 spawn_count matches 0 as @e[tag=field_island_zombie_ar_10] at @s run data merge storage mikatanserver:zombie_tagbox {"tag":["field_island_zombie_10"]}
execute if score $island_zombie10 spawn_count matches 0 as @e[tag=field_island_zombie_ar_10] at @s run function mikatanserver:adddim/area/island/mob/zombie/spawn/main


execute store result score $island_zombie11 spawn_count if entity @e[tag=field_island_zombie_11]
execute if score $island_zombie11 spawn_count matches 0 as @e[tag=field_island_zombie_ar_11] at @s run data merge storage mikatanserver:zombie_tagbox {"tag":["field_island_zombie_11"]}
execute if score $island_zombie11 spawn_count matches 0 as @e[tag=field_island_zombie_ar_11] at @s run function mikatanserver:adddim/area/island/mob/zombie/spawn/main
execute store result score $island_zombie12 spawn_count if entity @e[tag=field_island_zombie_12]
execute if score $island_zombie12 spawn_count matches 0 as @e[tag=field_island_zombie_ar_12] at @s run data merge storage mikatanserver:zombie_tagbox {"tag":["field_island_zombie_12"]}
execute if score $island_zombie12 spawn_count matches 0 as @e[tag=field_island_zombie_ar_12] at @s run function mikatanserver:adddim/area/island/mob/zombie/spawn/main
execute store result score $island_zombie13 spawn_count if entity @e[tag=field_island_zombie_13]
execute if score $island_zombie13 spawn_count matches 0 as @e[tag=field_island_zombie_ar_13] at @s run data merge storage mikatanserver:zombie_tagbox {"tag":["field_island_zombie_13"]}
execute if score $island_zombie13 spawn_count matches 0 as @e[tag=field_island_zombie_ar_13] at @s run function mikatanserver:adddim/area/island/mob/zombie/spawn/main
execute store result score $island_zombie14 spawn_count if entity @e[tag=field_island_zombie_14]
execute if score $island_zombie14 spawn_count matches 0 as @e[tag=field_island_zombie_ar_14] at @s run data merge storage mikatanserver:zombie_tagbox {"tag":["field_island_zombie_14"]}
execute if score $island_zombie14 spawn_count matches 0 as @e[tag=field_island_zombie_ar_14] at @s run function mikatanserver:adddim/area/island/mob/zombie/spawn/main
execute store result score $island_zombie15 spawn_count if entity @e[tag=field_island_zombie_15]
execute if score $island_zombie15 spawn_count matches 0 as @e[tag=field_island_zombie_ar_15] at @s run data merge storage mikatanserver:zombie_tagbox {"tag":["field_island_zombie_15"]}
execute if score $island_zombie15 spawn_count matches 0 as @e[tag=field_island_zombie_ar_15] at @s run function mikatanserver:adddim/area/island/mob/zombie/spawn/main


scoreboard players reset $island_zombie1 spawn_count
scoreboard players reset $island_zombie2 spawn_count
scoreboard players reset $island_zombie3 spawn_count
scoreboard players reset $island_zombie4 spawn_count
scoreboard players reset $island_zombie5 spawn_count
scoreboard players reset $island_zombie6 spawn_count
scoreboard players reset $island_zombie7 spawn_count
scoreboard players reset $island_zombie8 spawn_count
scoreboard players reset $island_zombie9 spawn_count
scoreboard players reset $island_zombie10 spawn_count
scoreboard players reset $island_zombie11 spawn_count
scoreboard players reset $island_zombie12 spawn_count
scoreboard players reset $island_zombie13 spawn_count
scoreboard players reset $island_zombie14 spawn_count
scoreboard players reset $island_zombie15 spawn_count