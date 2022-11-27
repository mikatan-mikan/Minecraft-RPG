execute as @e[tag=TwentythreeD_StarFall_1] at @s run tp @s ~0.5 ~ ~ ~10 ~
execute as @e[tag=TwentythreeD_StarFall_2] at @s run tp @s ~-0.25 ~ ~0.43301270185 ~10 ~
execute as @e[tag=TwentythreeD_StarFall_3] at @s run tp @s ~-0.25 ~ ~-0.43301270185 ~10 ~
execute as @e[tag=TwentythreeD_StarFall] at @s as @a[distance=..3] at @s run playsound block.stone.break master @s ~ ~ ~ 2 1
execute as @e[tag=TwentythreeD_StarFall] at @s if entity @a[distance=..3] run effect give @a[distance=..3] instant_damage 2 0
execute as @e[tag=TwentythreeD_StarFall] at @s if entity @a[distance=..3] run kill @s