execute if entity @a[scores={NineBossSkill2=140}] run data modify entity @s Pos[1] set value 177d
execute as @a[distance=..3] run effect give @s instant_damage 1 2
execute as @a[distance=..3] at @s run particle totem_of_undying ~ ~ ~ 0.4 0.8 0.4 0.2 50
execute as @a[distance=..3] at @s run playsound item.crossbow.shoot master @s ~ ~ ~ 2 0
execute if entity @a[distance=..3] run kill @s
execute at @s if block ~ ~-0.2 ~ grass_block run kill @s