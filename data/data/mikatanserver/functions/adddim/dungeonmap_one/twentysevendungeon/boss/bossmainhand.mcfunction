
execute as @s[tag=!TwentysevenMThanHigh] at @s if entity @a[tag=DungeonPlay_27,distance=5..10] run data merge entity @s {HandItems:[{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{id:"minecraft:power",lvl:30},{id:"minecraft:punch",lvl:3}]}}]}
execute as @s at @s if entity @a[tag=DungeonPlay_27,distance=5..10] run tag @s add TwentysevenMThanHigh
execute as @s at @s if entity @a[tag=DungeonPlay_27,distance=5..10] run tag @s remove TwentysevenMThanLow

execute as @s[tag=!TwentysevenMThanLow] at @s if entity @a[tag=DungeonPlay_27,distance=..5] run data merge entity @s {HandItems:[{id:"minecraft:stone_axe",Count:1b,tag:{Enchantments:[{id:"minecraft:sharpness",lvl:5}]}}]}
execute as @s at @s if entity @a[tag=DungeonPlay_27,distance=..5] run tag @s add TwentysevenMThanLow
execute as @s at @s if entity @a[tag=DungeonPlay_27,distance=..5] run tag @s remove TwentysevenMThanHigh