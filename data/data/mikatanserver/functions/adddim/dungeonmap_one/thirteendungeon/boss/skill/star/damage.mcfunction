execute as @a[distance=..3] run effect give @s instant_damage 1 1
execute as @a[distance=..3] run particle angry_villager ~ ~ ~ 0.25 0.5 0.25 1 100
execute if entity @a[distance=..3] run kill @s