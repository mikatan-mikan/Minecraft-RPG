##mikatanserver:adddim/area/calser/mob/calser/spawn/main 関数は 自身の座標と0-6の乱数を足したものから3を引いた場所にスポーンさせる関数(自身の周囲7*7)

execute store result score $calser1 spawn_count if entity @e[tag=field_calser_1]
execute if score $calser1 spawn_count matches 0 as @e[tag=field_calser_ar_1] at @s run data merge storage mikatanserver:ender_tagbox {"tag":["field_calser_1"]}
execute if score $calser1 spawn_count matches 0 if predicate mikatanserver:chance/0.2 as @e[tag=field_calser_ar_1] at @s run function mikatanserver:adddim/area/ender/mob/calser/spawn/main
execute store result score $calser2 spawn_count if entity @e[tag=field_calser_2]
execute if score $calser2 spawn_count matches 0 as @e[tag=field_calser_ar_2] at @s run data merge storage mikatanserver:ender_tagbox {"tag":["field_calser_2"]}
execute if score $calser2 spawn_count matches 0 if predicate mikatanserver:chance/0.2 as @e[tag=field_calser_ar_2] at @s run function mikatanserver:adddim/area/ender/mob/calser/spawn/main
execute store result score $calser3 spawn_count if entity @e[tag=field_calser_3]
execute if score $calser3 spawn_count matches 0 as @e[tag=field_calser_ar_3] at @s run data merge storage mikatanserver:ender_tagbox {"tag":["field_calser_3"]}
execute if score $calser3 spawn_count matches 0 if predicate mikatanserver:chance/0.2 as @e[tag=field_calser_ar_3] at @s run function mikatanserver:adddim/area/ender/mob/calser/spawn/main

scoreboard players reset $calser1 spawn_count
scoreboard players reset $calser2 spawn_count
scoreboard players reset $calser3 spawn_count