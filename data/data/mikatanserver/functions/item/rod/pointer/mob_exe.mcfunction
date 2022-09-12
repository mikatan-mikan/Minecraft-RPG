

effect give @s[type=#mikatanserver:undead] instant_health 1 0
effect give @s[type=#mikatanserver:not_undead] instant_damage 1 0


execute store result score @s MobNowHP run data get entity @s Health
scoreboard players remove @s MobNowHP 18
execute store result entity @s Health double 1 run scoreboard players get @s MobNowHP

particle end_rod ~ ~ ~ 0.5 0.5 0.5 1 20
particle item yellow_wool ~ ~ ~ 0.5 0.5 0.5 1 20