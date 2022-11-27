for i in range(16,32):
    print(f"execute store result score $nether_lig{i} spawn_count if entity @e[tag=field_nether_tier2_lig_{i}]")
    print(f"execute if score $nether_lig{i} spawn_count matches ..1 as @e[tag=field_nether_tier2_lig_ar_{i}] at @s run data merge storage mikatanserver:nether_mob_tagbox" + ' {"tag":["field_nether_tier2_lig_' + str(i) + '"],"diff":0}')
    print(f"execute if score $nether_lig{i} spawn_count matches ..1 as @e[tag=field_nether_tier2_lig_ar_{i}] at @s run function mikatanserver:adddim/area/nether_tier2/mob/def_zombie/spawn/main")