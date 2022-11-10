for i in range(9,36):
    print(f'scoreboard players reset $cherryblossom_zombie{i} spawn_count')
    # print(f'execute store result score $cherryblossom_zombie{i} spawn_count if entity @e[tag=field_cherryblossom_zombie_{i}]')
    # print(f'execute if score $cherryblossom_zombie{i} spawn_count matches ..1 as @e[tag=field_cherryblossom_zombie_ar_{i}] at @s run data merge storage mikatanserver:tagbox' + ' {"tag":["field_cherryblossom_zombie_' + str(i) + '"]}')
    # print(f'execute if score $cherryblossom_zombie{i} spawn_count matches ..1 as @e[tag=field_cherryblossom_zombie_ar_{i}] at @s run function mikatanserver:adddim/area/cherryblossom/mob/cherry_zombie/spawn/main')