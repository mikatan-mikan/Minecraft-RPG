execute as @s[tag=!FiveMThanLow23] at @s if entity @a[tag=DungeonPlay_23,distance=..5] run data merge entity @s {HandItems:[{id:"minecraft:stone_axe",Count:1b,tag:{Enchantments:[{id:"minecraft:sharpness",lvl:2}]}}]}
execute as @s at @s if entity @a[tag=DungeonPlay_23,distance=..5] run tag @s add FiveMThanLow23
execute as @s at @s if entity @a[tag=DungeonPlay_23,distance=..5] run tag @s remove FiveMThanHigh23
execute as @s[tag=!FiveMThanHigh23] at @s if entity @a[tag=DungeonPlay_23,distance=5..10] run data merge entity @s {HandItems:[{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{id:"minecraft:power",lvl:3},{id:"minecraft:punch",lvl:5}]}}]}
execute as @s at @s if entity @a[tag=DungeonPlay_23,distance=5..10] run tag @s add FiveMThanHigh23
execute as @s at @s if entity @a[tag=DungeonPlay_23,distance=5..10] run tag @s remove FiveMThanLow23