execute as @s[tag=!ThirtyfiveMThanLow] at @s if entity @a[tag=DungeonPlay_35,distance=..5] run data merge entity @s {HandItems:[{id:"minecraft:wooden_axe",Count:1b}]}
execute as @s at @s if entity @a[tag=DungeonPlay_35,distance=..5] run tag @s add ThirtyfiveMThanLow
execute as @s at @s if entity @a[tag=DungeonPlay_35,distance=..5] run tag @s remove ThirtyfiveMThanHigh
execute as @s[tag=!ThirtyfiveMThanHigh] at @s if entity @a[tag=DungeonPlay_35,distance=5..10] run data merge entity @s {HandItems:[{id:"minecraft:bow",Count:1b}]}
execute as @s at @s if entity @a[tag=DungeonPlay_35,distance=5..10] run tag @s add ThirtyfiveMThanHigh
execute as @s at @s if entity @a[tag=DungeonPlay_35,distance=5..10] run tag @s remove ThirtyfiveMThanLow