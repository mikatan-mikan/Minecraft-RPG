execute as @s[tag=!ThirtytwoMThanLow] at @s if entity @a[tag=DungeonPlay_32,distance=..5] run data merge entity @s {HandItems:[{id:"minecraft:stone_axe",Count:1b,tag:{Enchantments:[{id:"minecraft:sharpness",lvl:2}]}}]}
execute as @s at @s if entity @a[tag=DungeonPlay_32,distance=..5] run tag @s add ThirtytwoMThanLow
execute as @s at @s if entity @a[tag=DungeonPlay_32,distance=..5] run tag @s remove ThirtytwoMThanHigh
execute as @s[tag=!ThirtytwoMThanHigh] at @s if entity @a[tag=DungeonPlay_32,distance=5..10] run data merge entity @s {HandItems:[{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{id:"minecraft:power",lvl:15},{id:"minecraft:punch",lvl:2}]}}]}
execute as @s at @s if entity @a[tag=DungeonPlay_32,distance=5..10] run tag @s add ThirtytwoMThanHigh
execute as @s at @s if entity @a[tag=DungeonPlay_32,distance=5..10] run tag @s remove ThirtytwoMThanLow