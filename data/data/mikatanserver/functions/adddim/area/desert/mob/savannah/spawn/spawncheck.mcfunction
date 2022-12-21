##mikatanserver:adddim/area/desert/mob/savannah/spawn/main 関数は 自身の座標と0-6の乱数を足したものから3を引いた場所にスポーンさせる関数(自身の周囲7*7)

execute store result score $desert_savannah1 spawn_count if entity @e[tag=field_desert_savannah_1]
execute if score $desert_savannah1 spawn_count matches ..1 as @e[tag=field_desert_savannah_ar_1] at @s run data merge storage mikatanserver:tagbox {"tag":["field_desert_savannah_1"]}
execute if score $desert_savannah1 spawn_count matches ..1 as @e[tag=field_desert_savannah_ar_1] at @s run function mikatanserver:adddim/area/desert/mob/savannah/spawn/main
execute store result score $desert_savannah2 spawn_count if entity @e[tag=field_desert_savannah_2]
execute if score $desert_savannah2 spawn_count matches ..1 as @e[tag=field_desert_savannah_ar_2] at @s run data merge storage mikatanserver:tagbox {"tag":["field_desert_savannah_2"]}
execute if score $desert_savannah2 spawn_count matches ..1 as @e[tag=field_desert_savannah_ar_2] at @s run function mikatanserver:adddim/area/desert/mob/savannah/spawn/main
execute store result score $desert_savannah3 spawn_count if entity @e[tag=field_desert_savannah_3]
execute if score $desert_savannah3 spawn_count matches ..1 as @e[tag=field_desert_savannah_ar_3] at @s run data merge storage mikatanserver:tagbox {"tag":["field_desert_savannah_3"]}
execute if score $desert_savannah3 spawn_count matches ..1 as @e[tag=field_desert_savannah_ar_3] at @s run function mikatanserver:adddim/area/desert/mob/savannah/spawn/main
execute store result score $desert_savannah4 spawn_count if entity @e[tag=field_desert_savannah_4]
execute if score $desert_savannah4 spawn_count matches ..1 as @e[tag=field_desert_savannah_ar_4] at @s run data merge storage mikatanserver:tagbox {"tag":["field_desert_savannah_4"]}
execute if score $desert_savannah4 spawn_count matches ..1 as @e[tag=field_desert_savannah_ar_4] at @s run function mikatanserver:adddim/area/desert/mob/savannah/spawn/main
execute store result score $desert_savannah5 spawn_count if entity @e[tag=field_desert_savannah_5]
execute if score $desert_savannah5 spawn_count matches ..1 as @e[tag=field_desert_savannah_ar_5] at @s run data merge storage mikatanserver:tagbox {"tag":["field_desert_savannah_5"]}
execute if score $desert_savannah5 spawn_count matches ..1 as @e[tag=field_desert_savannah_ar_5] at @s run function mikatanserver:adddim/area/desert/mob/savannah/spawn/main
execute store result score $desert_savannah6 spawn_count if entity @e[tag=field_desert_savannah_6]
execute if score $desert_savannah6 spawn_count matches ..1 as @e[tag=field_desert_savannah_ar_6] at @s run data merge storage mikatanserver:tagbox {"tag":["field_desert_savannah_6"]}
execute if score $desert_savannah6 spawn_count matches ..1 as @e[tag=field_desert_savannah_ar_6] at @s run function mikatanserver:adddim/area/desert/mob/savannah/spawn/main
execute store result score $desert_savannah7 spawn_count if entity @e[tag=field_desert_savannah_7]
execute if score $desert_savannah7 spawn_count matches ..1 as @e[tag=field_desert_savannah_ar_7] at @s run data merge storage mikatanserver:tagbox {"tag":["field_desert_savannah_7"]}
execute if score $desert_savannah7 spawn_count matches ..1 as @e[tag=field_desert_savannah_ar_7] at @s run function mikatanserver:adddim/area/desert/mob/savannah/spawn/main
execute store result score $desert_savannah8 spawn_count if entity @e[tag=field_desert_savannah_8]
execute if score $desert_savannah8 spawn_count matches ..1 as @e[tag=field_desert_savannah_ar_8] at @s run data merge storage mikatanserver:tagbox {"tag":["field_desert_savannah_8"]}
execute if score $desert_savannah8 spawn_count matches ..1 as @e[tag=field_desert_savannah_ar_8] at @s run function mikatanserver:adddim/area/desert/mob/savannah/spawn/main
execute store result score $desert_savannah9 spawn_count if entity @e[tag=field_desert_savannah_9]
execute if score $desert_savannah9 spawn_count matches ..1 as @e[tag=field_desert_savannah_ar_9] at @s run data merge storage mikatanserver:tagbox {"tag":["field_desert_savannah_9"]}
execute if score $desert_savannah9 spawn_count matches ..1 as @e[tag=field_desert_savannah_ar_9] at @s run function mikatanserver:adddim/area/desert/mob/savannah/spawn/main
execute store result score $desert_savannah10 spawn_count if entity @e[tag=field_desert_savannah_10]
execute if score $desert_savannah10 spawn_count matches ..1 as @e[tag=field_desert_savannah_ar_10] at @s run data merge storage mikatanserver:tagbox {"tag":["field_desert_savannah_10"]}
execute if score $desert_savannah10 spawn_count matches ..1 as @e[tag=field_desert_savannah_ar_10] at @s run function mikatanserver:adddim/area/desert/mob/savannah/spawn/main
execute store result score $desert_savannah11 spawn_count if entity @e[tag=field_desert_savannah_11]
execute if score $desert_savannah11 spawn_count matches ..1 as @e[tag=field_desert_savannah_ar_11] at @s run data merge storage mikatanserver:tagbox {"tag":["field_desert_savannah_11"]}
execute if score $desert_savannah11 spawn_count matches ..1 as @e[tag=field_desert_savannah_ar_11] at @s run function mikatanserver:adddim/area/desert/mob/savannah/spawn/main

scoreboard players reset $desert_savannah1 spawn_count
scoreboard players reset $desert_savannah2 spawn_count
scoreboard players reset $desert_savannah3 spawn_count
scoreboard players reset $desert_savannah4 spawn_count
scoreboard players reset $desert_savannah5 spawn_count
scoreboard players reset $desert_savannah6 spawn_count
scoreboard players reset $desert_savannah7 spawn_count
scoreboard players reset $desert_savannah8 spawn_count
scoreboard players reset $desert_savannah9 spawn_count
scoreboard players reset $desert_savannah10 spawn_count
scoreboard players reset $desert_savannah11 spawn_count