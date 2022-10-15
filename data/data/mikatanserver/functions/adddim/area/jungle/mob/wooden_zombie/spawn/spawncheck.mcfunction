##mikatanserver:adddim/area/jungle/mob/wooden_zombie/spawn/main 関数は 自身の座標と0-6の乱数を足したものから3を引いた場所にスポーンさせる関数(自身の周囲7*7)

execute store result score $jungle_zombie1 spawn_count if entity @e[tag=field_jungle_zombie_1]
execute if score $jungle_zombie1 spawn_count matches ..1 as @e[tag=field_jungle_zombie_ar_1] at @s run data merge storage mikatanserver:tagbox {"tag":["field_jungle_zombie_1"]}
execute if score $jungle_zombie1 spawn_count matches ..1 as @e[tag=field_jungle_zombie_ar_1] at @s run function mikatanserver:adddim/area/jungle/mob/wooden_zombie/spawn/main
execute store result score $jungle_zombie2 spawn_count if entity @e[tag=field_jungle_zombie_2]
execute if score $jungle_zombie2 spawn_count matches ..1 as @e[tag=field_jungle_zombie_ar_2] at @s run data merge storage mikatanserver:tagbox {"tag":["field_jungle_zombie_2"]}
execute if score $jungle_zombie2 spawn_count matches ..1 as @e[tag=field_jungle_zombie_ar_2] at @s run function mikatanserver:adddim/area/jungle/mob/wooden_zombie/spawn/main
execute store result score $jungle_zombie3 spawn_count if entity @e[tag=field_jungle_zombie_3]
execute if score $jungle_zombie3 spawn_count matches ..1 as @e[tag=field_jungle_zombie_ar_3] at @s run data merge storage mikatanserver:tagbox {"tag":["field_jungle_zombie_3"]}
execute if score $jungle_zombie3 spawn_count matches ..1 as @e[tag=field_jungle_zombie_ar_3] at @s run function mikatanserver:adddim/area/jungle/mob/wooden_zombie/spawn/main
execute store result score $jungle_zombie4 spawn_count if entity @e[tag=field_jungle_zombie_4]
execute if score $jungle_zombie4 spawn_count matches ..1 as @e[tag=field_jungle_zombie_ar_4] at @s run data merge storage mikatanserver:tagbox {"tag":["field_jungle_zombie_4"]}
execute if score $jungle_zombie4 spawn_count matches ..1 as @e[tag=field_jungle_zombie_ar_4] at @s run function mikatanserver:adddim/area/jungle/mob/wooden_zombie/spawn/main
execute store result score $jungle_zombie5 spawn_count if entity @e[tag=field_jungle_zombie_5]
execute if score $jungle_zombie5 spawn_count matches ..1 as @e[tag=field_jungle_zombie_ar_5] at @s run data merge storage mikatanserver:tagbox {"tag":["field_jungle_zombie_5"]}
execute if score $jungle_zombie5 spawn_count matches ..1 as @e[tag=field_jungle_zombie_ar_5] at @s run function mikatanserver:adddim/area/jungle/mob/wooden_zombie/spawn/main
execute store result score $jungle_zombie6 spawn_count if entity @e[tag=field_jungle_zombie_6]
execute if score $jungle_zombie6 spawn_count matches ..1 as @e[tag=field_jungle_zombie_ar_6] at @s run data merge storage mikatanserver:tagbox {"tag":["field_jungle_zombie_6"]}
execute if score $jungle_zombie6 spawn_count matches ..1 as @e[tag=field_jungle_zombie_ar_6] at @s run function mikatanserver:adddim/area/jungle/mob/wooden_zombie/spawn/main
execute store result score $jungle_zombie7 spawn_count if entity @e[tag=field_jungle_zombie_7]
execute if score $jungle_zombie7 spawn_count matches ..1 as @e[tag=field_jungle_zombie_ar_7] at @s run data merge storage mikatanserver:tagbox {"tag":["field_jungle_zombie_7"]}
execute if score $jungle_zombie7 spawn_count matches ..1 as @e[tag=field_jungle_zombie_ar_7] at @s run function mikatanserver:adddim/area/jungle/mob/wooden_zombie/spawn/main
execute store result score $jungle_zombie8 spawn_count if entity @e[tag=field_jungle_zombie_8]
execute if score $jungle_zombie8 spawn_count matches ..1 as @e[tag=field_jungle_zombie_ar_8] at @s run data merge storage mikatanserver:tagbox {"tag":["field_jungle_zombie_8"]}
execute if score $jungle_zombie8 spawn_count matches ..1 as @e[tag=field_jungle_zombie_ar_8] at @s run function mikatanserver:adddim/area/jungle/mob/wooden_zombie/spawn/main

scoreboard players reset $jungle_zombie1 spawn_count
scoreboard players reset $jungle_zombie2 spawn_count
scoreboard players reset $jungle_zombie3 spawn_count
scoreboard players reset $jungle_zombie4 spawn_count
scoreboard players reset $jungle_zombie5 spawn_count
scoreboard players reset $jungle_zombie6 spawn_count
scoreboard players reset $jungle_zombie7 spawn_count
scoreboard players reset $jungle_zombie8 spawn_count