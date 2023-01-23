particle block glass ~ ~ ~ 0.2 0.2 0.2 0.5 15
execute store result score @s MobNowHP run data get entity @s Health
scoreboard players remove @s MobNowHP 1
execute if predicate mikatanserver:chance/0.25 store result entity @s Health float 1 run scoreboard players get @s MobNowHP