tp @s ~0.35 ~ ~
particle sweep_attack ~ ~ ~ 0.125 0.125 0.125 0 10
execute as @a[distance=..0.7] run effect give @s instant_damage 1 2
execute as @a[distance=..0.7] at @s run playsound block.glass.break master @s ~ ~ ~ 1 1