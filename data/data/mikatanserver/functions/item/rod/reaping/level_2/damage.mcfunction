execute as @e[distance=..7,type=#mikatanserver:mobs] store result score @s MobNowHP run data get entity @s Health
execute as @e[distance=..7,type=#mikatanserver:mobs] run scoreboard players remove @s MobNowHP 6
execute as @e[distance=..7,type=#mikatanserver:mobs] store result entity @s Health double 1 run scoreboard players get @s MobNowHP
execute as @e[distance=..7,type=#mikatanserver:mobs] run data merge entity @s {Fire:120}
execute run particle explosion ~ ~ ~ 1 1 1 2 100
execute run playsound entity.generic.explode master @a[distance=..10] ~ ~ ~ 2 1
execute at @s run function mikatanserver:item/rod/reaping/particle