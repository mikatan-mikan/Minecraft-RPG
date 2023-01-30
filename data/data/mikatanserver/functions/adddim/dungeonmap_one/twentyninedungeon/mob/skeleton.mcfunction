execute as @s[tag=!TwentynineMThanLow] at @s if entity @a[tag=DungeonPlay_29,distance=..5] run data merge entity @s {HandItems:[{id:"minecraft:wooden_axe",Count:1b}]}
execute as @s at @s if entity @a[tag=DungeonPlay_29,distance=..5] run tag @s add TwentynineMThanLow
execute as @s at @s if entity @a[tag=DungeonPlay_29,distance=..5] run tag @s remove TwentynineMThanHigh
execute as @s[tag=!TwentynineMThanHigh] at @s if entity @a[tag=DungeonPlay_29,distance=5..10] run data merge entity @s {HandItems:[{id:"minecraft:bow",Count:1b}]}
execute as @s at @s if entity @a[tag=DungeonPlay_29,distance=5..10] run tag @s add TwentynineMThanHigh
execute as @s at @s if entity @a[tag=DungeonPlay_29,distance=5..10] run tag @s remove TwentynineMThanLow