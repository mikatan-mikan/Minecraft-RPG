execute as @s[tag=!ThirtyoneMThanLow] at @s if entity @a[tag=DungeonPlay_31,distance=..5] run data merge entity @s {HandItems:[{id:"minecraft:wooden_axe",Count:1b}]}
execute as @s at @s if entity @a[tag=DungeonPlay_31,distance=..5] run tag @s add ThirtyoneMThanLow
execute as @s at @s if entity @a[tag=DungeonPlay_31,distance=..5] run tag @s remove ThirtyoneMThanHigh
execute as @s[tag=!ThirtyoneMThanHigh] at @s if entity @a[tag=DungeonPlay_31,distance=5..10] run data merge entity @s {HandItems:[{id:"minecraft:bow",Count:1b}]}
execute as @s at @s if entity @a[tag=DungeonPlay_31,distance=5..10] run tag @s add ThirtyoneMThanHigh
execute as @s at @s if entity @a[tag=DungeonPlay_31,distance=5..10] run tag @s remove ThirtyoneMThanLow