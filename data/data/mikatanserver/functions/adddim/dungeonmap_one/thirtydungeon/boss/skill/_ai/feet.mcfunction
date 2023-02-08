scoreboard players add $ai_feet ThirtyBossSkill 1
execute if score $ai_feet ThirtyBossSkill matches 4.. run scoreboard players set $ai_feet ThirtyBossSkill 0
execute if score $ai_feet ThirtyBossSkill matches 0 run data modify entity @s ArmorItems[{id:"minecraft:barrier"}].tag.CustomModelData set value 4
execute if score $ai_feet ThirtyBossSkill matches 1 run data modify entity @s ArmorItems[{id:"minecraft:barrier"}].tag.CustomModelData set value 5
execute if score $ai_feet ThirtyBossSkill matches 2 run data modify entity @s ArmorItems[{id:"minecraft:barrier"}].tag.CustomModelData set value 4
execute if score $ai_feet ThirtyBossSkill matches 3 run data modify entity @s ArmorItems[{id:"minecraft:barrier"}].tag.CustomModelData set value 6