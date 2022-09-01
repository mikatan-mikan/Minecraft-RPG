scoreboard players add @e[tag=luckrodAr] luckrodLoop 1

execute as @e[tag=luckrodAr] at @s unless block ~ ~ ~ air run kill @s

execute as @e[tag=luckrodAr] at @s facing entity @e[type=#mikatanserver:mobs,sort=nearest,limit=1] feet run teleport ^ ^ ^1
execute as @e[tag=luckrodAr] at @s unless entity @e[type=#mikatanserver:mobs] store result entity @s Rotation[0] float 1 run data get entity @p Rotation[0]
execute as @e[tag=luckrodAr] at @s unless entity @e[type=#mikatanserver:mobs] run tp ^ ^ ^1

execute as @e[tag=fullluckrod] at @s if entity @e[type=#mikatanserver:mobs,distance=..2] run function mikatanserver:item/rod/luck/damage
execute as @e[tag=miniluckrod] at @s if entity @e[type=#mikatanserver:mobs,distance=..2] run function mikatanserver:item/rod/luck/damage_mini
execute as @e[tag=fullluckrod] at @s run particle minecraft:dust 0.259 1 0.384 1 ~ ~ ~ 0.2 0.2 0.2 0.1 100
execute as @e[tag=miniluckrod] at @s run particle minecraft:dust 0.949 1 0.259 1 ~ ~ ~ 0.2 0.2 0.2 0.1 100

execute as @e[tag=luckrodAr,scores={luckrodLoop=15..}] run kill @s

schedule function mikatanserver:item/rod/luck/move 3t