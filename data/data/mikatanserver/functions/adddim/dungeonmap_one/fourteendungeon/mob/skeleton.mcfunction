execute as @s[tag=!FiveMThanLow] at @s if entity @a[tag=DungeonPlay_11,distance=..5] run data merge entity @s {HandItems:[{id:"minecraft:stone_axe",Count:1b,tag:{Enchantments:[{id:"minecraft:sharpness",lvl:7}]}}]}
execute as @s at @s if entity @a[tag=DungeonPlay_11,distance=..5] run tag @s add FiveMThanLow
execute as @s at @s if entity @a[tag=DungeonPlay_11,distance=..5] run tag @s remove FiveMThanHigh
execute as @s[tag=!FiveMThanHigh] at @s if entity @a[tag=DungeonPlay_11,distance=5..10] run data merge entity @s {HandItems:[{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{id:"minecraft:power",lvl:10},{id:"minecraft:punch",lvl:11}]}}]}
execute as @s at @s if entity @a[tag=DungeonPlay_11,distance=5..10] run tag @s add FiveMThanHigh
execute as @s at @s if entity @a[tag=DungeonPlay_11,distance=5..10] run tag @s remove FiveMThanLow