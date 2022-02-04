execute if entity @a[scores={NineBossSkill2=140}] run data modify entity @s Pos[1] set value 132d
execute if entity @a[scores={NineBossSkill2=140}] at @s run particle sweep_attack ~ ~1 ~ 0.4 0.4 0.4 1 5
execute as @a[distance=..3] run effect give @s instant_damage 1 2
execute as @a[distance=..3] run effect give @s levitation 1 40 true
execute as @a[distance=..3] at @s run particle totem_of_undying ~ ~ ~ 0.4 0.8 0.4 0.2 50
execute as @a[distance=..3] at @s run playsound minecraft:block.grindstone.use master @s ~ ~ ~ 2 0 1
execute if entity @a[distance=..3] run kill @s