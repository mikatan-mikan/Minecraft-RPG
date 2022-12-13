execute store result score $nether_mboss1 spawn_count if entity @e[tag=field_nether_mboss_1]
execute if score $nether_mboss1 spawn_count matches ..1 as @e[tag=field_nether_mboss_ar_1] at @s run data merge storage mikatanserver:nether_mob_tagbox {"tag":["field_nether_mboss_1"],"diff":3}
execute if score $nether_mboss1 spawn_count matches ..1 as @e[tag=field_nether_mboss_ar_1] at @s run function mikatanserver:adddim/area/nether/mob/def_zombie/spawn/main
execute store result score $nether_mboss2 spawn_count if entity @e[tag=field_nether_mboss_2]
execute if score $nether_mboss2 spawn_count matches ..1 as @e[tag=field_nether_mboss_ar_2] at @s run data merge storage mikatanserver:nether_mob_tagbox {"tag":["field_nether_mboss_2"],"diff":3}
execute if score $nether_mboss2 spawn_count matches ..1 as @e[tag=field_nether_mboss_ar_2] at @s run function mikatanserver:adddim/area/nether/mob/def_zombie/spawn/main
execute store result score $nether_mboss3 spawn_count if entity @e[tag=field_nether_mboss_3]
execute if score $nether_mboss3 spawn_count matches ..1 as @e[tag=field_nether_mboss_ar_3] at @s run data merge storage mikatanserver:nether_mob_tagbox {"tag":["field_nether_mboss_3"],"diff":3}
execute if score $nether_mboss3 spawn_count matches ..1 as @e[tag=field_nether_mboss_ar_3] at @s run function mikatanserver:adddim/area/nether/mob/def_zombie/spawn/main

scoreboard players reset $nether_mboss1 spawn_count
scoreboard players reset $nether_mboss2 spawn_count
scoreboard players reset $nether_mboss3 spawn_count
