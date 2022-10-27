execute as @e[tag = 22_IronBossAr] at @s run tp ^ ^ ^0.3
execute as @e[tag = 22_IronBossAr] at @s as @a[distance=..0.7] run effect give @s slowness 2 2
execute as @e[tag = 22_IronBossAr] at @s as @a[distance=..0.7] run effect give @s instant_damage 1 3
execute as @e[tag = 22_IronBossAr] at @s as @a[distance=..0.7] run kill @e[type=armor_stand,tag=22_IronBossAr,distance=..0.7]