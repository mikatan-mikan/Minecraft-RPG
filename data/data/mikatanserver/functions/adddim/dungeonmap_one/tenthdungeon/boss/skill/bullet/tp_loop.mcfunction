execute as @e[tag = IronBossAr] at @s run tp ^ ^ ^0.3
execute as @e[tag = IronBossAr] at @s as @a[distance=..1] run effect give @s slowness 2 2
execute as @e[tag = IronBossAr] at @s as @a[distance=..1] run effect give @s instant_damage 1 3
execute as @e[tag = IronBossAr] at @s as @a[distance=..1] run kill @e[type=armor_stand,tag=IronBossAr]