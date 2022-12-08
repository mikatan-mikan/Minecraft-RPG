##mikatanserver:adddim/area/wither/mob/wither/spawn/main 関数は 自身の座標と0-6の乱数を足したものから3を引いた場所にスポーンさせる関数(自身の周囲7*7)

execute store result score $wither1 spawn_count if entity @e[tag=field_wither_1]
execute if score $wither1 spawn_count matches ..1 as @e[tag=field_wither_ar_1] at @s run data merge storage mikatanserver:ender_tagbox {"tag":["field_wither_1"]}
execute if score $wither1 spawn_count matches ..1 as @e[tag=field_wither_ar_1] at @s run function mikatanserver:adddim/area/ender/mob/wither/spawn/main
execute store result score $wither2 spawn_count if entity @e[tag=field_wither_2]
execute if score $wither2 spawn_count matches ..1 as @e[tag=field_wither_ar_2] at @s run data merge storage mikatanserver:ender_tagbox {"tag":["field_wither_2"]}
execute if score $wither2 spawn_count matches ..1 as @e[tag=field_wither_ar_2] at @s run function mikatanserver:adddim/area/ender/mob/wither/spawn/main
execute store result score $wither3 spawn_count if entity @e[tag=field_wither_3]
execute if score $wither3 spawn_count matches ..1 as @e[tag=field_wither_ar_3] at @s run data merge storage mikatanserver:ender_tagbox {"tag":["field_wither_3"]}
execute if score $wither3 spawn_count matches ..1 as @e[tag=field_wither_ar_3] at @s run function mikatanserver:adddim/area/ender/mob/wither/spawn/main
execute store result score $wither4 spawn_count if entity @e[tag=field_wither_4]
execute if score $wither4 spawn_count matches ..1 as @e[tag=field_wither_ar_4] at @s run data merge storage mikatanserver:ender_tagbox {"tag":["field_wither_4"]}
execute if score $wither4 spawn_count matches ..1 as @e[tag=field_wither_ar_4] at @s run function mikatanserver:adddim/area/ender/mob/wither/spawn/main
execute store result score $wither5 spawn_count if entity @e[tag=field_wither_5]
execute if score $wither5 spawn_count matches ..1 as @e[tag=field_wither_ar_5] at @s run data merge storage mikatanserver:ender_tagbox {"tag":["field_wither_5"]}
execute if score $wither5 spawn_count matches ..1 as @e[tag=field_wither_ar_5] at @s run function mikatanserver:adddim/area/ender/mob/wither/spawn/main

scoreboard players reset $wither1 spawn_count
scoreboard players reset $wither2 spawn_count
scoreboard players reset $wither3 spawn_count
scoreboard players reset $wither4 spawn_count
scoreboard players reset $wither5 spawn_count