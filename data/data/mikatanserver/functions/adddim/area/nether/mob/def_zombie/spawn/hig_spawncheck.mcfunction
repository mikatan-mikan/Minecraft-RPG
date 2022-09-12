##mikatanserver:adddim/area/nether/mob/def_zombie/spawn/main 関数は 自身の座標と0-6の乱数を足したものから3を引いた場所にスポーンさせる関数(自身の周囲7*7)

execute store result score $nether_hig1 spawn_count if entity @e[tag=field_nether_hig_1]
execute if score $nether_hig1 spawn_count matches 0 as @e[tag=field_nether_hig_ar_1] at @s run data merge storage mikatanserver:nether_mob_tagbox {"tag":["field_nether_hig_1"],"diff":2}
execute if score $nether_hig1 spawn_count matches 0 as @e[tag=field_nether_hig_ar_1] at @s run function mikatanserver:adddim/area/nether/mob/def_zombie/spawn/main
execute store result score $nether_hig2 spawn_count if entity @e[tag=field_nether_hig_2]
execute if score $nether_hig2 spawn_count matches 0 as @e[tag=field_nether_hig_ar_2] at @s run data merge storage mikatanserver:nether_mob_tagbox {"tag":["field_nether_hig_2"],"diff":2}
execute if score $nether_hig2 spawn_count matches 0 as @e[tag=field_nether_hig_ar_2] at @s run function mikatanserver:adddim/area/nether/mob/def_zombie/spawn/main
execute store result score $nether_hig3 spawn_count if entity @e[tag=field_nether_hig_3]
execute if score $nether_hig3 spawn_count matches 0 as @e[tag=field_nether_hig_ar_3] at @s run data merge storage mikatanserver:nether_mob_tagbox {"tag":["field_nether_hig_3"],"diff":2}
execute if score $nether_hig3 spawn_count matches 0 as @e[tag=field_nether_hig_ar_3] at @s run function mikatanserver:adddim/area/nether/mob/def_zombie/spawn/main
execute store result score $nether_hig4 spawn_count if entity @e[tag=field_nether_hig_4]
execute if score $nether_hig4 spawn_count matches 0 as @e[tag=field_nether_hig_ar_4] at @s run data merge storage mikatanserver:nether_mob_tagbox {"tag":["field_nether_hig_4"],"diff":2}
execute if score $nether_hig4 spawn_count matches 0 as @e[tag=field_nether_hig_ar_4] at @s run function mikatanserver:adddim/area/nether/mob/def_zombie/spawn/main
execute store result score $nether_hig5 spawn_count if entity @e[tag=field_nether_hig_5]
execute if score $nether_hig5 spawn_count matches 0 as @e[tag=field_nether_hig_ar_5] at @s run data merge storage mikatanserver:nether_mob_tagbox {"tag":["field_nether_hig_5"],"diff":2}
execute if score $nether_hig5 spawn_count matches 0 as @e[tag=field_nether_hig_ar_5] at @s run function mikatanserver:adddim/area/nether/mob/def_zombie/spawn/main
execute store result score $nether_hig6 spawn_count if entity @e[tag=field_nether_hig_6]
execute if score $nether_hig6 spawn_count matches 0 as @e[tag=field_nether_hig_ar_6] at @s run data merge storage mikatanserver:nether_mob_tagbox {"tag":["field_nether_hig_6"],"diff":2}
execute if score $nether_hig6 spawn_count matches 0 as @e[tag=field_nether_hig_ar_6] at @s run function mikatanserver:adddim/area/nether/mob/def_zombie/spawn/main
execute store result score $nether_hig7 spawn_count if entity @e[tag=field_nether_hig_7]
execute if score $nether_hig7 spawn_count matches 0 as @e[tag=field_nether_hig_ar_7] at @s run data merge storage mikatanserver:nether_mob_tagbox {"tag":["field_nether_hig_7"],"diff":2}
execute if score $nether_hig7 spawn_count matches 0 as @e[tag=field_nether_hig_ar_7] at @s run function mikatanserver:adddim/area/nether/mob/def_zombie/spawn/main
execute store result score $nether_hig8 spawn_count if entity @e[tag=field_nether_hig_8]
execute if score $nether_hig8 spawn_count matches 0 as @e[tag=field_nether_hig_ar_8] at @s run data merge storage mikatanserver:nether_mob_tagbox {"tag":["field_nether_hig_8"],"diff":2}
execute if score $nether_hig8 spawn_count matches 0 as @e[tag=field_nether_hig_ar_8] at @s run function mikatanserver:adddim/area/nether/mob/def_zombie/spawn/main
execute store result score $nether_hig9 spawn_count if entity @e[tag=field_nether_hig_9]
execute if score $nether_hig9 spawn_count matches 0 as @e[tag=field_nether_hig_ar_9] at @s run data merge storage mikatanserver:nether_mob_tagbox {"tag":["field_nether_hig_9"],"diff":2}
execute if score $nether_hig9 spawn_count matches 0 as @e[tag=field_nether_hig_ar_9] at @s run function mikatanserver:adddim/area/nether/mob/def_zombie/spawn/main
execute store result score $nether_hig10 spawn_count if entity @e[tag=field_nether_hig_10]
execute if score $nether_hig10 spawn_count matches 0 as @e[tag=field_nether_hig_ar_10] at @s run data merge storage mikatanserver:nether_mob_tagbox {"tag":["field_nether_hig_10"],"diff":2}
execute if score $nether_hig10 spawn_count matches 0 as @e[tag=field_nether_hig_ar_10] at @s run function mikatanserver:adddim/area/nether/mob/def_zombie/spawn/main

scoreboard players reset $nether_hig1 spawn_count
scoreboard players reset $nether_hig2 spawn_count
scoreboard players reset $nether_hig3 spawn_count
scoreboard players reset $nether_hig4 spawn_count
scoreboard players reset $nether_hig5 spawn_count
scoreboard players reset $nether_hig6 spawn_count
scoreboard players reset $nether_hig7 spawn_count
scoreboard players reset $nether_hig8 spawn_count
scoreboard players reset $nether_hig9 spawn_count
scoreboard players reset $nether_hig10 spawn_count