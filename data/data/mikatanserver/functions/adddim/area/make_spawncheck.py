start = 1
end = 54

for i in range(start,end + 1):
    print(f"execute store result score $silf_ground{i} spawn_count if entity @e[tag=field_silf_ground_{i}]")
    print(f"execute if score $silf_ground{i} spawn_count matches ..1 as @e[tag=field_silf_ground_ar_{i}] at @s run data merge storage mikatanserver:tagbox" + ' {"tag":["field_silf_ground_' + str(i) + '"]}')
    print(f"execute if score $silf_ground{i} spawn_count matches ..1 as @e[tag=field_silf_ground_ar_{i}] at @s run function mikatanserver:adddim/area/silf/mob/ground/spawn/main")

for i in range(start,end + 1):
    print(f"scoreboard players reset $silf_ground{i} spawn_count")

'''
execute store result score $silf_ground1 spawn_count if entity @e[tag=field_silf_ground_1]
execute if score $silf_ground1 spawn_count matches ..1 as @e[tag=field_silf_ground_ar_1] at @s run data merge storage mikatanserver:tagbox {"tag":["field_silf_ground_1"]}
execute if score $silf_ground1 spawn_count matches ..1 as @e[tag=field_silf_ground_ar_1] at @s run function mikatanserver:adddim/area/silf/mob/ground/spawn/main
'''