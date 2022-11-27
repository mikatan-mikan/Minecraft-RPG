execute store result score $nether_mboss1 spawn_count if entity @e[tag=field_nether_tier2_mboss_1]
execute if score $nether_mboss1 spawn_count matches 0 as @e[tag=field_nether_tier2_mboss_ar_12] at @s run data merge storage mikatanserver:nether_mob_tagbox {"tag":["field_nether_tier2_mboss_1"],"diff":4}
execute if score $nether_mboss1 spawn_count matches 0 as @e[tag=field_nether_tier2_mboss_ar_12] at @s run function mikatanserver:adddim/area/nether_tier2/mob/def_zombie/spawn/miniboss/main
execute store result score $nether_mboss2 spawn_count if entity @e[tag=field_nether_tier2_mboss_2]
execute if score $nether_mboss2 spawn_count matches 0 as @e[tag=field_nether_tier2_mboss_ar_13] at @s run data merge storage mikatanserver:nether_mob_tagbox {"tag":["field_nether_tier2_mboss_2"],"diff":4}
execute if score $nether_mboss2 spawn_count matches 0 as @e[tag=field_nether_tier2_mboss_ar_13] at @s run function mikatanserver:adddim/area/nether_tier2/mob/def_zombie/spawn/miniboss/main
execute store result score $nether_mboss3 spawn_count if entity @e[tag=field_nether_tier2_mboss_3]
execute if score $nether_mboss3 spawn_count matches 0 as @e[tag=field_nether_tier2_mboss_ar_14] at @s run data merge storage mikatanserver:nether_mob_tagbox {"tag":["field_nether_tier2_mboss_3"],"diff":4}
execute if score $nether_mboss3 spawn_count matches 0 as @e[tag=field_nether_tier2_mboss_ar_14] at @s run function mikatanserver:adddim/area/nether_tier2/mob/def_zombie/spawn/miniboss/main

scoreboard players reset $nether_mboss1 spawn_count
scoreboard players reset $nether_mboss2 spawn_count
scoreboard players reset $nether_mboss3 spawn_count