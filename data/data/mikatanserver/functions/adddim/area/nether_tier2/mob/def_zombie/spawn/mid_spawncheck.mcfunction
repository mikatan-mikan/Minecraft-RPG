##mikatanserver:adddim/area/nether_tier2/mob/def_zombie/spawn/main 関数は 自身の座標と0-6の乱数を足したものから3を引いた場所にスポーンさせる関数(自身の周囲7*7)

execute store result score $nether_mid1 spawn_count if entity @e[tag=field_nether_tier2_mid_1]
execute if score $nether_mid1 spawn_count matches ..1 as @e[tag=field_nether_tier2_mid_ar_1] at @s run data merge storage mikatanserver:nether_mob_tagbox {"tag":["field_nether_tier2_mid_1"],"diff":1}
execute if score $nether_mid1 spawn_count matches ..1 as @e[tag=field_nether_tier2_mid_ar_1] at @s run function mikatanserver:adddim/area/nether_tier2/mob/def_zombie/spawn/main
execute store result score $nether_mid2 spawn_count if entity @e[tag=field_nether_tier2_mid_2]
execute if score $nether_mid2 spawn_count matches ..1 as @e[tag=field_nether_tier2_mid_ar_2] at @s run data merge storage mikatanserver:nether_mob_tagbox {"tag":["field_nether_tier2_mid_2"],"diff":1}
execute if score $nether_mid2 spawn_count matches ..1 as @e[tag=field_nether_tier2_mid_ar_2] at @s run function mikatanserver:adddim/area/nether_tier2/mob/def_zombie/spawn/main
execute store result score $nether_mid3 spawn_count if entity @e[tag=field_nether_tier2_mid_3]
execute if score $nether_mid3 spawn_count matches ..1 as @e[tag=field_nether_tier2_mid_ar_3] at @s run data merge storage mikatanserver:nether_mob_tagbox {"tag":["field_nether_tier2_mid_3"],"diff":1}
execute if score $nether_mid3 spawn_count matches ..1 as @e[tag=field_nether_tier2_mid_ar_3] at @s run function mikatanserver:adddim/area/nether_tier2/mob/def_zombie/spawn/main
execute store result score $nether_mid4 spawn_count if entity @e[tag=field_nether_tier2_mid_4]
execute if score $nether_mid4 spawn_count matches ..1 as @e[tag=field_nether_tier2_mid_ar_4] at @s run data merge storage mikatanserver:nether_mob_tagbox {"tag":["field_nether_tier2_mid_4"],"diff":1}
execute if score $nether_mid4 spawn_count matches ..1 as @e[tag=field_nether_tier2_mid_ar_4] at @s run function mikatanserver:adddim/area/nether_tier2/mob/def_zombie/spawn/main
execute store result score $nether_mid5 spawn_count if entity @e[tag=field_nether_tier2_mid_5]
execute if score $nether_mid5 spawn_count matches ..1 as @e[tag=field_nether_tier2_mid_ar_5] at @s run data merge storage mikatanserver:nether_mob_tagbox {"tag":["field_nether_tier2_mid_5"],"diff":1}
execute if score $nether_mid5 spawn_count matches ..1 as @e[tag=field_nether_tier2_mid_ar_5] at @s run function mikatanserver:adddim/area/nether_tier2/mob/def_zombie/spawn/main
execute store result score $nether_mid6 spawn_count if entity @e[tag=field_nether_tier2_mid_6]
execute if score $nether_mid6 spawn_count matches ..1 as @e[tag=field_nether_tier2_mid_ar_6] at @s run data merge storage mikatanserver:nether_mob_tagbox {"tag":["field_nether_tier2_mid_6"],"diff":1}
execute if score $nether_mid6 spawn_count matches ..1 as @e[tag=field_nether_tier2_mid_ar_6] at @s run function mikatanserver:adddim/area/nether_tier2/mob/def_zombie/spawn/main
execute store result score $nether_mid7 spawn_count if entity @e[tag=field_nether_tier2_mid_7]
execute if score $nether_mid7 spawn_count matches ..1 as @e[tag=field_nether_tier2_mid_ar_7] at @s run data merge storage mikatanserver:nether_mob_tagbox {"tag":["field_nether_tier2_mid_7"],"diff":1}
execute if score $nether_mid7 spawn_count matches ..1 as @e[tag=field_nether_tier2_mid_ar_7] at @s run function mikatanserver:adddim/area/nether_tier2/mob/def_zombie/spawn/main
execute store result score $nether_mid8 spawn_count if entity @e[tag=field_nether_tier2_mid_8]
execute if score $nether_mid8 spawn_count matches ..1 as @e[tag=field_nether_tier2_mid_ar_8] at @s run data merge storage mikatanserver:nether_mob_tagbox {"tag":["field_nether_tier2_mid_8"],"diff":1}
execute if score $nether_mid8 spawn_count matches ..1 as @e[tag=field_nether_tier2_mid_ar_8] at @s run function mikatanserver:adddim/area/nether_tier2/mob/def_zombie/spawn/main
execute store result score $nether_mid9 spawn_count if entity @e[tag=field_nether_tier2_mid_9]
execute if score $nether_mid9 spawn_count matches ..1 as @e[tag=field_nether_tier2_mid_ar_9] at @s run data merge storage mikatanserver:nether_mob_tagbox {"tag":["field_nether_tier2_mid_9"],"diff":1}
execute if score $nether_mid9 spawn_count matches ..1 as @e[tag=field_nether_tier2_mid_ar_9] at @s run function mikatanserver:adddim/area/nether_tier2/mob/def_zombie/spawn/main
execute store result score $nether_mid10 spawn_count if entity @e[tag=field_nether_tier2_mid_10]
execute if score $nether_mid10 spawn_count matches ..1 as @e[tag=field_nether_tier2_mid_ar_10] at @s run data merge storage mikatanserver:nether_mob_tagbox {"tag":["field_nether_tier2_mid_10"],"diff":1}
execute if score $nether_mid10 spawn_count matches ..1 as @e[tag=field_nether_tier2_mid_ar_10] at @s run function mikatanserver:adddim/area/nether_tier2/mob/def_zombie/spawn/main
execute store result score $nether_mid11 spawn_count if entity @e[tag=field_nether_tier2_mid_11]
execute if score $nether_mid11 spawn_count matches ..1 as @e[tag=field_nether_tier2_mid_ar_11] at @s run data merge storage mikatanserver:nether_mob_tagbox {"tag":["field_nether_tier2_mid_11"],"diff":1}
execute if score $nether_mid11 spawn_count matches ..1 as @e[tag=field_nether_tier2_mid_ar_11] at @s run function mikatanserver:adddim/area/nether_tier2/mob/def_zombie/spawn/main
execute store result score $nether_mid12 spawn_count if entity @e[tag=field_nether_tier2_mid_12]
execute if score $nether_mid12 spawn_count matches ..1 as @e[tag=field_nether_tier2_mid_ar_12] at @s run data merge storage mikatanserver:nether_mob_tagbox {"tag":["field_nether_tier2_mid_12"],"diff":1}
execute if score $nether_mid12 spawn_count matches ..1 as @e[tag=field_nether_tier2_mid_ar_12] at @s run function mikatanserver:adddim/area/nether_tier2/mob/def_zombie/spawn/main
execute store result score $nether_mid13 spawn_count if entity @e[tag=field_nether_tier2_mid_13]
execute if score $nether_mid13 spawn_count matches ..1 as @e[tag=field_nether_tier2_mid_ar_13] at @s run data merge storage mikatanserver:nether_mob_tagbox {"tag":["field_nether_tier2_mid_13"],"diff":1}
execute if score $nether_mid13 spawn_count matches ..1 as @e[tag=field_nether_tier2_mid_ar_13] at @s run function mikatanserver:adddim/area/nether_tier2/mob/def_zombie/spawn/main
execute store result score $nether_mid14 spawn_count if entity @e[tag=field_nether_tier2_mid_14]
execute if score $nether_mid14 spawn_count matches ..1 as @e[tag=field_nether_tier2_mid_ar_14] at @s run data merge storage mikatanserver:nether_mob_tagbox {"tag":["field_nether_tier2_mid_14"],"diff":1}
execute if score $nether_mid14 spawn_count matches ..1 as @e[tag=field_nether_tier2_mid_ar_14] at @s run function mikatanserver:adddim/area/nether_tier2/mob/def_zombie/spawn/main
execute store result score $nether_mid15 spawn_count if entity @e[tag=field_nether_tier2_mid_15]
execute if score $nether_mid15 spawn_count matches ..1 as @e[tag=field_nether_tier2_mid_ar_15] at @s run data merge storage mikatanserver:nether_mob_tagbox {"tag":["field_nether_tier2_mid_15"],"diff":1}
execute if score $nether_mid15 spawn_count matches ..1 as @e[tag=field_nether_tier2_mid_ar_15] at @s run function mikatanserver:adddim/area/nether_tier2/mob/def_zombie/spawn/main
execute store result score $nether_mid16 spawn_count if entity @e[tag=field_nether_tier2_mid_16]
execute if score $nether_mid16 spawn_count matches ..1 as @e[tag=field_nether_tier2_mid_ar_16] at @s run data merge storage mikatanserver:nether_mob_tagbox {"tag":["field_nether_tier2_mid_16"],"diff":1}
execute if score $nether_mid16 spawn_count matches ..1 as @e[tag=field_nether_tier2_mid_ar_16] at @s run function mikatanserver:adddim/area/nether_tier2/mob/def_zombie/spawn/main
execute store result score $nether_mid17 spawn_count if entity @e[tag=field_nether_tier2_mid_17]
execute if score $nether_mid17 spawn_count matches ..1 as @e[tag=field_nether_tier2_mid_ar_17] at @s run data merge storage mikatanserver:nether_mob_tagbox {"tag":["field_nether_tier2_mid_17"],"diff":1}
execute if score $nether_mid17 spawn_count matches ..1 as @e[tag=field_nether_tier2_mid_ar_17] at @s run function mikatanserver:adddim/area/nether_tier2/mob/def_zombie/spawn/main
execute store result score $nether_mid18 spawn_count if entity @e[tag=field_nether_tier2_mid_18]
execute if score $nether_mid18 spawn_count matches ..1 as @e[tag=field_nether_tier2_mid_ar_18] at @s run data merge storage mikatanserver:nether_mob_tagbox {"tag":["field_nether_tier2_mid_18"],"diff":1}
execute if score $nether_mid18 spawn_count matches ..1 as @e[tag=field_nether_tier2_mid_ar_18] at @s run function mikatanserver:adddim/area/nether_tier2/mob/def_zombie/spawn/main
execute store result score $nether_mid19 spawn_count if entity @e[tag=field_nether_tier2_mid_19]
execute if score $nether_mid19 spawn_count matches ..1 as @e[tag=field_nether_tier2_mid_ar_19] at @s run data merge storage mikatanserver:nether_mob_tagbox {"tag":["field_nether_tier2_mid_19"],"diff":1}
execute if score $nether_mid19 spawn_count matches ..1 as @e[tag=field_nether_tier2_mid_ar_19] at @s run function mikatanserver:adddim/area/nether_tier2/mob/def_zombie/spawn/main
execute store result score $nether_mid20 spawn_count if entity @e[tag=field_nether_tier2_mid_20]
execute if score $nether_mid20 spawn_count matches ..1 as @e[tag=field_nether_tier2_mid_ar_20] at @s run data merge storage mikatanserver:nether_mob_tagbox {"tag":["field_nether_tier2_mid_20"],"diff":1}
execute if score $nether_mid20 spawn_count matches ..1 as @e[tag=field_nether_tier2_mid_ar_20] at @s run function mikatanserver:adddim/area/nether_tier2/mob/def_zombie/spawn/main


scoreboard players reset $nether_mid1 spawn_count
scoreboard players reset $nether_mid2 spawn_count
scoreboard players reset $nether_mid3 spawn_count
scoreboard players reset $nether_mid4 spawn_count
scoreboard players reset $nether_mid5 spawn_count
scoreboard players reset $nether_mid6 spawn_count
scoreboard players reset $nether_mid7 spawn_count
scoreboard players reset $nether_mid8 spawn_count
scoreboard players reset $nether_mid9 spawn_count
scoreboard players reset $nether_mid10 spawn_count
scoreboard players reset $nether_mid11 spawn_count
scoreboard players reset $nether_mid12 spawn_count
scoreboard players reset $nether_mid13 spawn_count
scoreboard players reset $nether_mid14 spawn_count
scoreboard players reset $nether_mid15 spawn_count
scoreboard players reset $nether_mid16 spawn_count
scoreboard players reset $nether_mid17 spawn_count
scoreboard players reset $nether_mid18 spawn_count
scoreboard players reset $nether_mid19 spawn_count
scoreboard players reset $nether_mid20 spawn_count