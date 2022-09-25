##mikatanserver:adddim/area/farm/mob/zombie/spawn/main 関数は 自身の座標と0-6の乱数を足したものから3を引いた場所にスポーンさせる関数(自身の周囲7*7)

execute store result score $farm_zombie1 spawn_count if entity @e[tag=field_farm_zombie_1]
execute if score $farm_zombie1 spawn_count matches ..1 as @e[tag=field_farm_zombie_ar_1] at @s run data merge storage mikatanserver:tagbox {"tag":["field_farm_zombie_1"]}
execute if score $farm_zombie1 spawn_count matches ..1 as @e[tag=field_farm_zombie_ar_1] at @s run function mikatanserver:adddim/area/farm/mob/zombie/spawn/main
execute store result score $farm_zombie2 spawn_count if entity @e[tag=field_farm_zombie_2]
execute if score $farm_zombie2 spawn_count matches ..1 as @e[tag=field_farm_zombie_ar_2] at @s run data merge storage mikatanserver:tagbox {"tag":["field_farm_zombie_2"]}
execute if score $farm_zombie2 spawn_count matches ..1 as @e[tag=field_farm_zombie_ar_2] at @s run function mikatanserver:adddim/area/farm/mob/zombie/spawn/main
execute store result score $farm_zombie3 spawn_count if entity @e[tag=field_farm_zombie_3]
execute if score $farm_zombie3 spawn_count matches ..1 as @e[tag=field_farm_zombie_ar_3] at @s run data merge storage mikatanserver:tagbox {"tag":["field_farm_zombie_3"]}
execute if score $farm_zombie3 spawn_count matches ..1 as @e[tag=field_farm_zombie_ar_3] at @s run function mikatanserver:adddim/area/farm/mob/zombie/spawn/main
execute store result score $farm_zombie4 spawn_count if entity @e[tag=field_farm_zombie_4]
execute if score $farm_zombie4 spawn_count matches ..1 as @e[tag=field_farm_zombie_ar_4] at @s run data merge storage mikatanserver:tagbox {"tag":["field_farm_zombie_4"]}
execute if score $farm_zombie4 spawn_count matches ..1 as @e[tag=field_farm_zombie_ar_4] at @s run function mikatanserver:adddim/area/farm/mob/zombie/spawn/main
execute store result score $farm_zombie5 spawn_count if entity @e[tag=field_farm_zombie_5]
execute if score $farm_zombie5 spawn_count matches ..1 as @e[tag=field_farm_zombie_ar_5] at @s run data merge storage mikatanserver:tagbox {"tag":["field_farm_zombie_5"]}
execute if score $farm_zombie5 spawn_count matches ..1 as @e[tag=field_farm_zombie_ar_5] at @s run function mikatanserver:adddim/area/farm/mob/zombie/spawn/main

scoreboard players reset $farm_zombie1 spawn_count
scoreboard players reset $farm_zombie2 spawn_count
scoreboard players reset $farm_zombie3 spawn_count
scoreboard players reset $farm_zombie4 spawn_count
scoreboard players reset $farm_zombie5 spawn_count