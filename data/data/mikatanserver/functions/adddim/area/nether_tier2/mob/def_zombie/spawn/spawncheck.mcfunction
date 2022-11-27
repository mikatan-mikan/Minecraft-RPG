##mikatanserver:adddim/area/nether_tier2/mob/def_zombie/spawn/main 関数は 自身の座標と0-6の乱数を足したものから3を引いた場所にスポーンさせる関数(自身の周囲7*7)

execute store result score $nether_lig1 spawn_count if entity @e[tag=field_nether_tier2_lig_1]
execute if score $nether_lig1 spawn_count matches ..1 as @e[tag=field_nether_tier2_lig_ar_1] at @s run data merge storage mikatanserver:nether_mob_tagbox {"tag":["field_nether_tier2_lig_1"],"diff":0}
execute if score $nether_lig1 spawn_count matches ..1 as @e[tag=field_nether_tier2_lig_ar_1] at @s run function mikatanserver:adddim/area/nether_tier2/mob/def_zombie/spawn/main
execute store result score $nether_lig2 spawn_count if entity @e[tag=field_nether_tier2_lig_2]
execute if score $nether_lig2 spawn_count matches ..1 as @e[tag=field_nether_tier2_lig_ar_2] at @s run data merge storage mikatanserver:nether_mob_tagbox {"tag":["field_nether_tier2_lig_2"],"diff":0}
execute if score $nether_lig2 spawn_count matches ..1 as @e[tag=field_nether_tier2_lig_ar_2] at @s run function mikatanserver:adddim/area/nether_tier2/mob/def_zombie/spawn/main
execute store result score $nether_lig3 spawn_count if entity @e[tag=field_nether_tier2_lig_3]
execute if score $nether_lig3 spawn_count matches ..1 as @e[tag=field_nether_tier2_lig_ar_3] at @s run data merge storage mikatanserver:nether_mob_tagbox {"tag":["field_nether_tier2_lig_3"],"diff":0}
execute if score $nether_lig3 spawn_count matches ..1 as @e[tag=field_nether_tier2_lig_ar_3] at @s run function mikatanserver:adddim/area/nether_tier2/mob/def_zombie/spawn/main
execute store result score $nether_lig4 spawn_count if entity @e[tag=field_nether_tier2_lig_4]
execute if score $nether_lig4 spawn_count matches ..1 as @e[tag=field_nether_tier2_lig_ar_4] at @s run data merge storage mikatanserver:nether_mob_tagbox {"tag":["field_nether_tier2_lig_4"],"diff":0}
execute if score $nether_lig4 spawn_count matches ..1 as @e[tag=field_nether_tier2_lig_ar_4] at @s run function mikatanserver:adddim/area/nether_tier2/mob/def_zombie/spawn/main
execute store result score $nether_lig5 spawn_count if entity @e[tag=field_nether_tier2_lig_5]
execute if score $nether_lig5 spawn_count matches ..1 as @e[tag=field_nether_tier2_lig_ar_5] at @s run data merge storage mikatanserver:nether_mob_tagbox {"tag":["field_nether_tier2_lig_5"],"diff":0}
execute if score $nether_lig5 spawn_count matches ..1 as @e[tag=field_nether_tier2_lig_ar_5] at @s run function mikatanserver:adddim/area/nether_tier2/mob/def_zombie/spawn/main
execute store result score $nether_lig6 spawn_count if entity @e[tag=field_nether_tier2_lig_6]
execute if score $nether_lig6 spawn_count matches ..1 as @e[tag=field_nether_tier2_lig_ar_6] at @s run data merge storage mikatanserver:nether_mob_tagbox {"tag":["field_nether_tier2_lig_6"],"diff":0}
execute if score $nether_lig6 spawn_count matches ..1 as @e[tag=field_nether_tier2_lig_ar_6] at @s run function mikatanserver:adddim/area/nether_tier2/mob/def_zombie/spawn/main
execute store result score $nether_lig7 spawn_count if entity @e[tag=field_nether_tier2_lig_7]
execute if score $nether_lig7 spawn_count matches ..1 as @e[tag=field_nether_tier2_lig_ar_7] at @s run data merge storage mikatanserver:nether_mob_tagbox {"tag":["field_nether_tier2_lig_7"],"diff":0}
execute if score $nether_lig7 spawn_count matches ..1 as @e[tag=field_nether_tier2_lig_ar_7] at @s run function mikatanserver:adddim/area/nether_tier2/mob/def_zombie/spawn/main
execute store result score $nether_lig8 spawn_count if entity @e[tag=field_nether_tier2_lig_8]
execute if score $nether_lig8 spawn_count matches ..1 as @e[tag=field_nether_tier2_lig_ar_8] at @s run data merge storage mikatanserver:nether_mob_tagbox {"tag":["field_nether_tier2_lig_8"],"diff":0}
execute if score $nether_lig8 spawn_count matches ..1 as @e[tag=field_nether_tier2_lig_ar_8] at @s run function mikatanserver:adddim/area/nether_tier2/mob/def_zombie/spawn/main
execute store result score $nether_lig9 spawn_count if entity @e[tag=field_nether_tier2_lig_9]
execute if score $nether_lig9 spawn_count matches ..1 as @e[tag=field_nether_tier2_lig_ar_9] at @s run data merge storage mikatanserver:nether_mob_tagbox {"tag":["field_nether_tier2_lig_9"],"diff":0}
execute if score $nether_lig9 spawn_count matches ..1 as @e[tag=field_nether_tier2_lig_ar_9] at @s run function mikatanserver:adddim/area/nether_tier2/mob/def_zombie/spawn/main
execute store result score $nether_lig10 spawn_count if entity @e[tag=field_nether_tier2_lig_10]
execute if score $nether_lig10 spawn_count matches ..1 as @e[tag=field_nether_tier2_lig_ar_10] at @s run data merge storage mikatanserver:nether_mob_tagbox {"tag":["field_nether_tier2_lig_10"],"diff":0}
execute if score $nether_lig10 spawn_count matches ..1 as @e[tag=field_nether_tier2_lig_ar_10] at @s run function mikatanserver:adddim/area/nether_tier2/mob/def_zombie/spawn/main
execute store result score $nether_lig11 spawn_count if entity @e[tag=field_nether_tier2_lig_11]
execute if score $nether_lig11 spawn_count matches ..1 as @e[tag=field_nether_tier2_lig_ar_11] at @s run data merge storage mikatanserver:nether_mob_tagbox {"tag":["field_nether_tier2_lig_11"],"diff":0}
execute if score $nether_lig11 spawn_count matches ..1 as @e[tag=field_nether_tier2_lig_ar_11] at @s run function mikatanserver:adddim/area/nether_tier2/mob/def_zombie/spawn/main
execute store result score $nether_lig12 spawn_count if entity @e[tag=field_nether_tier2_lig_12]
execute if score $nether_lig12 spawn_count matches ..1 as @e[tag=field_nether_tier2_lig_ar_12] at @s run data merge storage mikatanserver:nether_mob_tagbox {"tag":["field_nether_tier2_lig_12"],"diff":0}
execute if score $nether_lig12 spawn_count matches ..1 as @e[tag=field_nether_tier2_lig_ar_12] at @s run function mikatanserver:adddim/area/nether_tier2/mob/def_zombie/spawn/main
execute store result score $nether_lig13 spawn_count if entity @e[tag=field_nether_tier2_lig_13]
execute if score $nether_lig13 spawn_count matches ..1 as @e[tag=field_nether_tier2_lig_ar_13] at @s run data merge storage mikatanserver:nether_mob_tagbox {"tag":["field_nether_tier2_lig_13"],"diff":0}
execute if score $nether_lig13 spawn_count matches ..1 as @e[tag=field_nether_tier2_lig_ar_13] at @s run function mikatanserver:adddim/area/nether_tier2/mob/def_zombie/spawn/main
execute store result score $nether_lig14 spawn_count if entity @e[tag=field_nether_tier2_lig_14]
execute if score $nether_lig14 spawn_count matches ..1 as @e[tag=field_nether_tier2_lig_ar_14] at @s run data merge storage mikatanserver:nether_mob_tagbox {"tag":["field_nether_tier2_lig_14"],"diff":0}
execute if score $nether_lig14 spawn_count matches ..1 as @e[tag=field_nether_tier2_lig_ar_14] at @s run function mikatanserver:adddim/area/nether_tier2/mob/def_zombie/spawn/main
execute store result score $nether_lig15 spawn_count if entity @e[tag=field_nether_tier2_lig_15]
execute if score $nether_lig15 spawn_count matches ..1 as @e[tag=field_nether_tier2_lig_ar_15] at @s run data merge storage mikatanserver:nether_mob_tagbox {"tag":["field_nether_tier2_lig_15"],"diff":0}
execute if score $nether_lig15 spawn_count matches ..1 as @e[tag=field_nether_tier2_lig_ar_15] at @s run function mikatanserver:adddim/area/nether_tier2/mob/def_zombie/spawn/main
execute store result score $nether_lig16 spawn_count if entity @e[tag=field_nether_tier2_lig_16]
execute if score $nether_lig16 spawn_count matches ..1 as @e[tag=field_nether_tier2_lig_ar_16] at @s run data merge storage mikatanserver:nether_mob_tagbox {"tag":["field_nether_tier2_lig_16"],"diff":0}
execute if score $nether_lig16 spawn_count matches ..1 as @e[tag=field_nether_tier2_lig_ar_16] at @s run function mikatanserver:adddim/area/nether_tier2/mob/def_zombie/spawn/main
execute store result score $nether_lig17 spawn_count if entity @e[tag=field_nether_tier2_lig_17]
execute if score $nether_lig17 spawn_count matches ..1 as @e[tag=field_nether_tier2_lig_ar_17] at @s run data merge storage mikatanserver:nether_mob_tagbox {"tag":["field_nether_tier2_lig_17"],"diff":0}
execute if score $nether_lig17 spawn_count matches ..1 as @e[tag=field_nether_tier2_lig_ar_17] at @s run function mikatanserver:adddim/area/nether_tier2/mob/def_zombie/spawn/main
execute store result score $nether_lig18 spawn_count if entity @e[tag=field_nether_tier2_lig_18]
execute if score $nether_lig18 spawn_count matches ..1 as @e[tag=field_nether_tier2_lig_ar_18] at @s run data merge storage mikatanserver:nether_mob_tagbox {"tag":["field_nether_tier2_lig_18"],"diff":0}
execute if score $nether_lig18 spawn_count matches ..1 as @e[tag=field_nether_tier2_lig_ar_18] at @s run function mikatanserver:adddim/area/nether_tier2/mob/def_zombie/spawn/main
execute store result score $nether_lig19 spawn_count if entity @e[tag=field_nether_tier2_lig_19]
execute if score $nether_lig19 spawn_count matches ..1 as @e[tag=field_nether_tier2_lig_ar_19] at @s run data merge storage mikatanserver:nether_mob_tagbox {"tag":["field_nether_tier2_lig_19"],"diff":0}
execute if score $nether_lig19 spawn_count matches ..1 as @e[tag=field_nether_tier2_lig_ar_19] at @s run function mikatanserver:adddim/area/nether_tier2/mob/def_zombie/spawn/main
execute store result score $nether_lig20 spawn_count if entity @e[tag=field_nether_tier2_lig_20]
execute if score $nether_lig20 spawn_count matches ..1 as @e[tag=field_nether_tier2_lig_ar_20] at @s run data merge storage mikatanserver:nether_mob_tagbox {"tag":["field_nether_tier2_lig_20"],"diff":0}
execute if score $nether_lig20 spawn_count matches ..1 as @e[tag=field_nether_tier2_lig_ar_20] at @s run function mikatanserver:adddim/area/nether_tier2/mob/def_zombie/spawn/main
execute store result score $nether_lig21 spawn_count if entity @e[tag=field_nether_tier2_lig_21]
execute if score $nether_lig21 spawn_count matches ..1 as @e[tag=field_nether_tier2_lig_ar_21] at @s run data merge storage mikatanserver:nether_mob_tagbox {"tag":["field_nether_tier2_lig_21"],"diff":0}
execute if score $nether_lig21 spawn_count matches ..1 as @e[tag=field_nether_tier2_lig_ar_21] at @s run function mikatanserver:adddim/area/nether_tier2/mob/def_zombie/spawn/main
execute store result score $nether_lig22 spawn_count if entity @e[tag=field_nether_tier2_lig_22]
execute if score $nether_lig22 spawn_count matches ..1 as @e[tag=field_nether_tier2_lig_ar_22] at @s run data merge storage mikatanserver:nether_mob_tagbox {"tag":["field_nether_tier2_lig_22"],"diff":0}
execute if score $nether_lig22 spawn_count matches ..1 as @e[tag=field_nether_tier2_lig_ar_22] at @s run function mikatanserver:adddim/area/nether_tier2/mob/def_zombie/spawn/main
execute store result score $nether_lig23 spawn_count if entity @e[tag=field_nether_tier2_lig_23]
execute if score $nether_lig23 spawn_count matches ..1 as @e[tag=field_nether_tier2_lig_ar_23] at @s run data merge storage mikatanserver:nether_mob_tagbox {"tag":["field_nether_tier2_lig_23"],"diff":0}
execute if score $nether_lig23 spawn_count matches ..1 as @e[tag=field_nether_tier2_lig_ar_23] at @s run function mikatanserver:adddim/area/nether_tier2/mob/def_zombie/spawn/main
execute store result score $nether_lig24 spawn_count if entity @e[tag=field_nether_tier2_lig_24]
execute if score $nether_lig24 spawn_count matches ..1 as @e[tag=field_nether_tier2_lig_ar_24] at @s run data merge storage mikatanserver:nether_mob_tagbox {"tag":["field_nether_tier2_lig_24"],"diff":0}
execute if score $nether_lig24 spawn_count matches ..1 as @e[tag=field_nether_tier2_lig_ar_24] at @s run function mikatanserver:adddim/area/nether_tier2/mob/def_zombie/spawn/main
execute store result score $nether_lig25 spawn_count if entity @e[tag=field_nether_tier2_lig_25]
execute if score $nether_lig25 spawn_count matches ..1 as @e[tag=field_nether_tier2_lig_ar_25] at @s run data merge storage mikatanserver:nether_mob_tagbox {"tag":["field_nether_tier2_lig_25"],"diff":0}
execute if score $nether_lig25 spawn_count matches ..1 as @e[tag=field_nether_tier2_lig_ar_25] at @s run function mikatanserver:adddim/area/nether_tier2/mob/def_zombie/spawn/main
execute store result score $nether_lig26 spawn_count if entity @e[tag=field_nether_tier2_lig_26]
execute if score $nether_lig26 spawn_count matches ..1 as @e[tag=field_nether_tier2_lig_ar_26] at @s run data merge storage mikatanserver:nether_mob_tagbox {"tag":["field_nether_tier2_lig_26"],"diff":0}
execute if score $nether_lig26 spawn_count matches ..1 as @e[tag=field_nether_tier2_lig_ar_26] at @s run function mikatanserver:adddim/area/nether_tier2/mob/def_zombie/spawn/main
execute store result score $nether_lig27 spawn_count if entity @e[tag=field_nether_tier2_lig_27]
execute if score $nether_lig27 spawn_count matches ..1 as @e[tag=field_nether_tier2_lig_ar_27] at @s run data merge storage mikatanserver:nether_mob_tagbox {"tag":["field_nether_tier2_lig_27"],"diff":0}
execute if score $nether_lig27 spawn_count matches ..1 as @e[tag=field_nether_tier2_lig_ar_27] at @s run function mikatanserver:adddim/area/nether_tier2/mob/def_zombie/spawn/main
execute store result score $nether_lig28 spawn_count if entity @e[tag=field_nether_tier2_lig_28]
execute if score $nether_lig28 spawn_count matches ..1 as @e[tag=field_nether_tier2_lig_ar_28] at @s run data merge storage mikatanserver:nether_mob_tagbox {"tag":["field_nether_tier2_lig_28"],"diff":0}
execute if score $nether_lig28 spawn_count matches ..1 as @e[tag=field_nether_tier2_lig_ar_28] at @s run function mikatanserver:adddim/area/nether_tier2/mob/def_zombie/spawn/main
execute store result score $nether_lig29 spawn_count if entity @e[tag=field_nether_tier2_lig_29]
execute if score $nether_lig29 spawn_count matches ..1 as @e[tag=field_nether_tier2_lig_ar_29] at @s run data merge storage mikatanserver:nether_mob_tagbox {"tag":["field_nether_tier2_lig_29"],"diff":0}
execute if score $nether_lig29 spawn_count matches ..1 as @e[tag=field_nether_tier2_lig_ar_29] at @s run function mikatanserver:adddim/area/nether_tier2/mob/def_zombie/spawn/main
execute store result score $nether_lig30 spawn_count if entity @e[tag=field_nether_tier2_lig_30]
execute if score $nether_lig30 spawn_count matches ..1 as @e[tag=field_nether_tier2_lig_ar_30] at @s run data merge storage mikatanserver:nether_mob_tagbox {"tag":["field_nether_tier2_lig_30"],"diff":0}
execute if score $nether_lig30 spawn_count matches ..1 as @e[tag=field_nether_tier2_lig_ar_30] at @s run function mikatanserver:adddim/area/nether_tier2/mob/def_zombie/spawn/main
execute store result score $nether_lig31 spawn_count if entity @e[tag=field_nether_tier2_lig_31]
execute if score $nether_lig31 spawn_count matches ..1 as @e[tag=field_nether_tier2_lig_ar_31] at @s run data merge storage mikatanserver:nether_mob_tagbox {"tag":["field_nether_tier2_lig_31"],"diff":0}
execute if score $nether_lig31 spawn_count matches ..1 as @e[tag=field_nether_tier2_lig_ar_31] at @s run function mikatanserver:adddim/area/nether_tier2/mob/def_zombie/spawn/main


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
scoreboard players reset $nether_lig16 spawn_count
scoreboard players reset $nether_lig17 spawn_count
scoreboard players reset $nether_lig18 spawn_count
scoreboard players reset $nether_lig19 spawn_count
scoreboard players reset $nether_lig20 spawn_count
scoreboard players reset $nether_lig21 spawn_count
scoreboard players reset $nether_lig22 spawn_count
scoreboard players reset $nether_lig23 spawn_count
scoreboard players reset $nether_lig24 spawn_count
scoreboard players reset $nether_lig25 spawn_count
scoreboard players reset $nether_lig26 spawn_count
scoreboard players reset $nether_lig27 spawn_count
scoreboard players reset $nether_lig28 spawn_count
scoreboard players reset $nether_lig29 spawn_count
scoreboard players reset $nether_lig30 spawn_count
scoreboard players reset $nether_lig31 spawn_count