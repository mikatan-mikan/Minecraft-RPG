##mikatanserver:adddim/area/nether/mob/def_zombie/spawn/main 関数は 自身の座標と0-6の乱数を足したものから3を引いた場所にスポーンさせる関数(自身の周囲7*7)

execute store result score $nether_mid1 spawn_count if entity @e[tag=field_nether_mid_1]
execute if score $nether_mid1 spawn_count matches ..1 as @e[tag=field_nether_mid_ar_1] at @s run data merge storage mikatanserver:nether_mob_tagbox {"tag":["field_nether_mid_1"],"diff":1}
execute if score $nether_mid1 spawn_count matches ..1 as @e[tag=field_nether_mid_ar_1] at @s run function mikatanserver:adddim/area/nether/mob/def_zombie/spawn/main
execute store result score $nether_mid2 spawn_count if entity @e[tag=field_nether_mid_2]
execute if score $nether_mid2 spawn_count matches ..1 as @e[tag=field_nether_mid_ar_2] at @s run data merge storage mikatanserver:nether_mob_tagbox {"tag":["field_nether_mid_2"],"diff":1}
execute if score $nether_mid2 spawn_count matches ..1 as @e[tag=field_nether_mid_ar_2] at @s run function mikatanserver:adddim/area/nether/mob/def_zombie/spawn/main
execute store result score $nether_mid3 spawn_count if entity @e[tag=field_nether_mid_3]
execute if score $nether_mid3 spawn_count matches ..1 as @e[tag=field_nether_mid_ar_3] at @s run data merge storage mikatanserver:nether_mob_tagbox {"tag":["field_nether_mid_3"],"diff":1}
execute if score $nether_mid3 spawn_count matches ..1 as @e[tag=field_nether_mid_ar_3] at @s run function mikatanserver:adddim/area/nether/mob/def_zombie/spawn/main
execute store result score $nether_mid4 spawn_count if entity @e[tag=field_nether_mid_4]
execute if score $nether_mid4 spawn_count matches ..1 as @e[tag=field_nether_mid_ar_4] at @s run data merge storage mikatanserver:nether_mob_tagbox {"tag":["field_nether_mid_4"],"diff":1}
execute if score $nether_mid4 spawn_count matches ..1 as @e[tag=field_nether_mid_ar_4] at @s run function mikatanserver:adddim/area/nether/mob/def_zombie/spawn/main
execute store result score $nether_mid5 spawn_count if entity @e[tag=field_nether_mid_5]
execute if score $nether_mid5 spawn_count matches ..1 as @e[tag=field_nether_mid_ar_5] at @s run data merge storage mikatanserver:nether_mob_tagbox {"tag":["field_nether_mid_5"],"diff":1}
execute if score $nether_mid5 spawn_count matches ..1 as @e[tag=field_nether_mid_ar_5] at @s run function mikatanserver:adddim/area/nether/mob/def_zombie/spawn/main
execute store result score $nether_mid6 spawn_count if entity @e[tag=field_nether_mid_6]
execute if score $nether_mid6 spawn_count matches ..1 as @e[tag=field_nether_mid_ar_6] at @s run data merge storage mikatanserver:nether_mob_tagbox {"tag":["field_nether_mid_6"],"diff":1}
execute if score $nether_mid6 spawn_count matches ..1 as @e[tag=field_nether_mid_ar_6] at @s run function mikatanserver:adddim/area/nether/mob/def_zombie/spawn/main
execute store result score $nether_mid7 spawn_count if entity @e[tag=field_nether_mid_7]
execute if score $nether_mid7 spawn_count matches ..1 as @e[tag=field_nether_mid_ar_7] at @s run data merge storage mikatanserver:nether_mob_tagbox {"tag":["field_nether_mid_7"],"diff":1}
execute if score $nether_mid7 spawn_count matches ..1 as @e[tag=field_nether_mid_ar_7] at @s run function mikatanserver:adddim/area/nether/mob/def_zombie/spawn/main
execute store result score $nether_mid8 spawn_count if entity @e[tag=field_nether_mid_8]
execute if score $nether_mid8 spawn_count matches ..1 as @e[tag=field_nether_mid_ar_8] at @s run data merge storage mikatanserver:nether_mob_tagbox {"tag":["field_nether_mid_8"],"diff":1}
execute if score $nether_mid8 spawn_count matches ..1 as @e[tag=field_nether_mid_ar_8] at @s run function mikatanserver:adddim/area/nether/mob/def_zombie/spawn/main
execute store result score $nether_mid9 spawn_count if entity @e[tag=field_nether_mid_9]
execute if score $nether_mid9 spawn_count matches ..1 as @e[tag=field_nether_mid_ar_9] at @s run data merge storage mikatanserver:nether_mob_tagbox {"tag":["field_nether_mid_9"],"diff":1}
execute if score $nether_mid9 spawn_count matches ..1 as @e[tag=field_nether_mid_ar_9] at @s run function mikatanserver:adddim/area/nether/mob/def_zombie/spawn/main
execute store result score $nether_mid10 spawn_count if entity @e[tag=field_nether_mid_10]
execute if score $nether_mid10 spawn_count matches ..1 as @e[tag=field_nether_mid_ar_10] at @s run data merge storage mikatanserver:nether_mob_tagbox {"tag":["field_nether_mid_10"],"diff":1}
execute if score $nether_mid10 spawn_count matches ..1 as @e[tag=field_nether_mid_ar_10] at @s run function mikatanserver:adddim/area/nether/mob/def_zombie/spawn/main
execute store result score $nether_mid11 spawn_count if entity @e[tag=field_nether_mid_11]
execute if score $nether_mid11 spawn_count matches ..1 as @e[tag=field_nether_mid_ar_11] at @s run data merge storage mikatanserver:nether_mob_tagbox {"tag":["field_nether_mid_11"],"diff":1}
execute if score $nether_mid11 spawn_count matches ..1 as @e[tag=field_nether_mid_ar_11] at @s run function mikatanserver:adddim/area/nether/mob/def_zombie/spawn/main
execute store result score $nether_mid12 spawn_count if entity @e[tag=field_nether_mid_12]
execute if score $nether_mid12 spawn_count matches ..1 as @e[tag=field_nether_mid_ar_12] at @s run data merge storage mikatanserver:nether_mob_tagbox {"tag":["field_nether_mid_12"],"diff":1}
execute if score $nether_mid12 spawn_count matches ..1 as @e[tag=field_nether_mid_ar_12] at @s run function mikatanserver:adddim/area/nether/mob/def_zombie/spawn/main


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