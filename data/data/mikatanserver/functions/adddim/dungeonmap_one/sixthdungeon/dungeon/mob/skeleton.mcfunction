execute as @s[tag=!FiveMThanHigh] at @s if entity @a[tag=DungeonPlay_6,distance=5..10] run data merge entity @s {HandItems:[{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{id:"minecraft:power",lvl:25},{id:"minecraft:punch",lvl:2}],}}],HandDropChances:[0.0f,0.0f]}
execute as @s at @s if entity @a[tag=DungeonPlay_6,distance=5..10] run tag @s add FiveMThanHigh
execute as @s at @s if entity @a[tag=DungeonPlay_6,distance=5..10] run tag @s remove FiveMThanLow
execute as @s[tag=!FiveMThanLow] at @s if entity @a[tag=DungeonPlay_6,distance=..5] run data merge entity @s {HandItems:[{id:"minecraft:stone_sword",Count:1b,tag:{Enchantments:[{id:"minecraft:unbreaking",lvl:1},{id:"minecraft:sharpness",lvl:2}]}}]}
execute as @s at @s if entity @a[tag=DungeonPlay_6,distance=..5] run tag @s add FiveMThanLow
execute as @s at @s if entity @a[tag=DungeonPlay_6,distance=..5] run tag @s remove FiveMThanHigh
