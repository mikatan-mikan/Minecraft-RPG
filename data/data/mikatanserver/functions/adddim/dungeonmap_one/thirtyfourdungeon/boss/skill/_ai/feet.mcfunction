# scoreboard players add $ai_feet ThirtyfourBossSkill 1
# execute if score $ai_feet ThirtyfourBossSkill matches 4.. run scoreboard players set $ai_feet ThirtyfourBossSkill 0
# execute if score $ai_feet ThirtyfourBossSkill matches 0 run data modify entity @s ArmorItems[{id:"minecraft:barrier"}].tag.CustomModelData set value 4
# execute if score $ai_feet ThirtyfourBossSkill matches 1 run data modify entity @s ArmorItems[{id:"minecraft:barrier"}].tag.CustomModelData set value 5
# execute if score $ai_feet ThirtyfourBossSkill matches 2 run data modify entity @s ArmorItems[{id:"minecraft:barrier"}].tag.CustomModelData set value 4
# execute if score $ai_feet ThirtyfourBossSkill matches 3 run data modify entity @s ArmorItems[{id:"minecraft:barrier"}].tag.CustomModelData set value 6