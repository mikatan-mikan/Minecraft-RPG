execute as @e[type=#mikatanserver:not_undead,distance=..2] run effect give @s instant_damage 1 0
execute as @e[type=#mikatanserver:undead,distance=..2] run effect give @s instant_damage 1 0
execute as @e[type=#mikatanserver:mobs,distance=..2] store result score @s MobNowHP run data get entity @s Health
execute as @e[type=#mikatanserver:mobs,distance=..2] run scoreboard players remove @s MobNowHP 4
execute as @e[type=#mikatanserver:mobs,distance=..2] store result entity @s Health double 1 run scoreboard players get @s MobNowHP
execute as @a[distance=..20] at @s run playsound minecraft:entity.evoker_fangs.attack master @s ~ ~ ~ 2 2 1
particle minecraft:dust 1 0.816 0 1 ~ ~ ~ 1 1 1 1 1000
kill @s