start = 1
end = 25

for i in range(start,end + 1):
    print(f"execute store result score $ender2_main_{i} spawn_count if entity @e[tag=field_ender2_main_{i}]")
    print(f"execute if score $ender2_main_{i} spawn_count matches ..1 as @e[tag=field_ender2_main_ar_{i}] at @s run data merge storage mikatanserver:tagbox" + ' {"tag":["field_ender2_main_' + str(i) + '"]}')
    print(f"execute if score $ender2_main_{i} spawn_count matches ..1 as @e[tag=field_ender2_main_ar_{i}] at @s run function mikatanserver:adddim/area/ender_tier2/mob/main/spawn/main")

for i in range(start,end + 1):
    print(f"scoreboard players reset $ender2_main_{i} spawn_count")

'''

execute store result score $ender2_high_2 spawn_count if entity @e[tag=field_ender2_high_2]
execute if score $ender2_high_2 spawn_count matches ..1 as @e[tag=field_ender2_high_ar_2] at @s run data merge storage mikatanserver:tagbox {"tag":["field_ender2_high_2"]}
execute if score $ender2_high_2 spawn_count matches ..1 as @e[tag=field_ender2_high_ar_2] at @s run function mikatanserver:adddim/area/ender_tier2/mob/high/spawn/main
'''