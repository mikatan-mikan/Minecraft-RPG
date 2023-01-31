execute as @e[tag=season2DungeonBombAr] at @s run particle explosion ~ ~ ~ 0.4 0.4 0.4 0.2 100
execute as @e[tag=season2DungeonBombAr] at @s run playsound entity.generic.explode master @a[distance=..80] ~ ~ ~ 2 1.4 1
execute as @e[tag=season2DungeonBombAr] at @s run effect give @a[distance=..5] instant_damage 1 3
kill @e[tag=season2DungeonBombAr]