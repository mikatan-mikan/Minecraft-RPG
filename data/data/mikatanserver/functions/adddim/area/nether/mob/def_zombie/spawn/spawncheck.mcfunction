##mikatanserver:adddim/area/nether/mob/def_zombie/spawn/main 関数は 自身の座標と0-6の乱数を足したものから3を引いた場所にスポーンさせる関数(自身の周囲7*7)

execute store result score $nether_lig1 spawn_count if entity @e[tag=field_nether_lig_1]
execute if score $nether_lig1 spawn_count matches ..1 as @e[tag=field_nether_lig_ar_1] at @s run data merge storage mikatanserver:nether_mob_tagbox {"tag":["field_nether_lig_1"],"diff":0}
execute if score $nether_lig1 spawn_count matches ..1 as @e[tag=field_nether_lig_ar_1] at @s run function mikatanserver:adddim/area/nether/mob/def_zombie/spawn/main
execute store result score $nether_lig2 spawn_count if entity @e[tag=field_nether_lig_2]
execute if score $nether_lig2 spawn_count matches ..1 as @e[tag=field_nether_lig_ar_2] at @s run data merge storage mikatanserver:nether_mob_tagbox {"tag":["field_nether_lig_2"],"diff":0}
execute if score $nether_lig2 spawn_count matches ..1 as @e[tag=field_nether_lig_ar_2] at @s run function mikatanserver:adddim/area/nether/mob/def_zombie/spawn/main
execute store result score $nether_lig3 spawn_count if entity @e[tag=field_nether_lig_3]
execute if score $nether_lig3 spawn_count matches ..1 as @e[tag=field_nether_lig_ar_3] at @s run data merge storage mikatanserver:nether_mob_tagbox {"tag":["field_nether_lig_3"],"diff":0}
execute if score $nether_lig3 spawn_count matches ..1 as @e[tag=field_nether_lig_ar_3] at @s run function mikatanserver:adddim/area/nether/mob/def_zombie/spawn/main
execute store result score $nether_lig4 spawn_count if entity @e[tag=field_nether_lig_4]
execute if score $nether_lig4 spawn_count matches ..1 as @e[tag=field_nether_lig_ar_4] at @s run data merge storage mikatanserver:nether_mob_tagbox {"tag":["field_nether_lig_4"],"diff":0}
execute if score $nether_lig4 spawn_count matches ..1 as @e[tag=field_nether_lig_ar_4] at @s run function mikatanserver:adddim/area/nether/mob/def_zombie/spawn/main
execute store result score $nether_lig5 spawn_count if entity @e[tag=field_nether_lig_5]
execute if score $nether_lig5 spawn_count matches ..1 as @e[tag=field_nether_lig_ar_5] at @s run data merge storage mikatanserver:nether_mob_tagbox {"tag":["field_nether_lig_5"],"diff":0}
execute if score $nether_lig5 spawn_count matches ..1 as @e[tag=field_nether_lig_ar_5] at @s run function mikatanserver:adddim/area/nether/mob/def_zombie/spawn/main
execute store result score $nether_lig6 spawn_count if entity @e[tag=field_nether_lig_6]
execute if score $nether_lig6 spawn_count matches ..1 as @e[tag=field_nether_lig_ar_6] at @s run data merge storage mikatanserver:nether_mob_tagbox {"tag":["field_nether_lig_6"],"diff":0}
execute if score $nether_lig6 spawn_count matches ..1 as @e[tag=field_nether_lig_ar_6] at @s run function mikatanserver:adddim/area/nether/mob/def_zombie/spawn/main
execute store result score $nether_lig7 spawn_count if entity @e[tag=field_nether_lig_7]
execute if score $nether_lig7 spawn_count matches ..1 as @e[tag=field_nether_lig_ar_7] at @s run data merge storage mikatanserver:nether_mob_tagbox {"tag":["field_nether_lig_7"],"diff":0}
execute if score $nether_lig7 spawn_count matches ..1 as @e[tag=field_nether_lig_ar_7] at @s run function mikatanserver:adddim/area/nether/mob/def_zombie/spawn/main
execute store result score $nether_lig8 spawn_count if entity @e[tag=field_nether_lig_8]
execute if score $nether_lig8 spawn_count matches ..1 as @e[tag=field_nether_lig_ar_8] at @s run data merge storage mikatanserver:nether_mob_tagbox {"tag":["field_nether_lig_8"],"diff":0}
execute if score $nether_lig8 spawn_count matches ..1 as @e[tag=field_nether_lig_ar_8] at @s run function mikatanserver:adddim/area/nether/mob/def_zombie/spawn/main
execute store result score $nether_lig9 spawn_count if entity @e[tag=field_nether_lig_9]
execute if score $nether_lig9 spawn_count matches ..1 as @e[tag=field_nether_lig_ar_9] at @s run data merge storage mikatanserver:nether_mob_tagbox {"tag":["field_nether_lig_9"],"diff":0}
execute if score $nether_lig9 spawn_count matches ..1 as @e[tag=field_nether_lig_ar_9] at @s run function mikatanserver:adddim/area/nether/mob/def_zombie/spawn/main
execute store result score $nether_lig10 spawn_count if entity @e[tag=field_nether_lig_10]
execute if score $nether_lig10 spawn_count matches ..1 as @e[tag=field_nether_lig_ar_10] at @s run data merge storage mikatanserver:nether_mob_tagbox {"tag":["field_nether_lig_10"],"diff":0}
execute if score $nether_lig10 spawn_count matches ..1 as @e[tag=field_nether_lig_ar_10] at @s run function mikatanserver:adddim/area/nether/mob/def_zombie/spawn/main
execute store result score $nether_lig11 spawn_count if entity @e[tag=field_nether_lig_11]
execute if score $nether_lig11 spawn_count matches ..1 as @e[tag=field_nether_lig_ar_11] at @s run data merge storage mikatanserver:nether_mob_tagbox {"tag":["field_nether_lig_11"],"diff":0}
execute if score $nether_lig11 spawn_count matches ..1 as @e[tag=field_nether_lig_ar_11] at @s run function mikatanserver:adddim/area/nether/mob/def_zombie/spawn/main
execute store result score $nether_lig12 spawn_count if entity @e[tag=field_nether_lig_12]
execute if score $nether_lig12 spawn_count matches ..1 as @e[tag=field_nether_lig_ar_12] at @s run data merge storage mikatanserver:nether_mob_tagbox {"tag":["field_nether_lig_12"],"diff":0}
execute if score $nether_lig12 spawn_count matches ..1 as @e[tag=field_nether_lig_ar_12] at @s run function mikatanserver:adddim/area/nether/mob/def_zombie/spawn/main
execute store result score $nether_lig13 spawn_count if entity @e[tag=field_nether_lig_13]
execute if score $nether_lig13 spawn_count matches ..1 as @e[tag=field_nether_lig_ar_13] at @s run data merge storage mikatanserver:nether_mob_tagbox {"tag":["field_nether_lig_13"],"diff":0}
execute if score $nether_lig13 spawn_count matches ..1 as @e[tag=field_nether_lig_ar_13] at @s run function mikatanserver:adddim/area/nether/mob/def_zombie/spawn/main
execute store result score $nether_lig14 spawn_count if entity @e[tag=field_nether_lig_14]
execute if score $nether_lig14 spawn_count matches ..1 as @e[tag=field_nether_lig_ar_14] at @s run data merge storage mikatanserver:nether_mob_tagbox {"tag":["field_nether_lig_14"],"diff":0}
execute if score $nether_lig14 spawn_count matches ..1 as @e[tag=field_nether_lig_ar_14] at @s run function mikatanserver:adddim/area/nether/mob/def_zombie/spawn/main
execute store result score $nether_lig15 spawn_count if entity @e[tag=field_nether_lig_15]
execute if score $nether_lig15 spawn_count matches ..1 as @e[tag=field_nether_lig_ar_15] at @s run data merge storage mikatanserver:nether_mob_tagbox {"tag":["field_nether_lig_15"],"diff":0}
execute if score $nether_lig15 spawn_count matches ..1 as @e[tag=field_nether_lig_ar_15] at @s run function mikatanserver:adddim/area/nether/mob/def_zombie/spawn/main


scoreboard players reset $nether_lig1 spawn_count
scoreboard players reset $nether_lig2 spawn_count
scoreboard players reset $nether_lig3 spawn_count
scoreboard players reset $nether_lig4 spawn_count
scoreboard players reset $nether_lig5 spawn_count
scoreboard players reset $nether_lig6 spawn_count
scoreboard players reset $nether_lig7 spawn_count
scoreboard players reset $nether_lig8 spawn_count
scoreboard players reset $nether_lig9 spawn_count
scoreboard players reset $nether_lig10 spawn_count
scoreboard players reset $nether_lig11 spawn_count
scoreboard players reset $nether_lig12 spawn_count
scoreboard players reset $nether_lig13 spawn_count
scoreboard players reset $nether_lig14 spawn_count
scoreboard players reset $nether_lig15 spawn_count