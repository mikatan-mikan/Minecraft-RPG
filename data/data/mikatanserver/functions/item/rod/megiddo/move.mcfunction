scoreboard players add @e[tag=megiddoAr] megiddoLoop 1

execute as @e[tag=megiddoAr] at @s unless block ~ ~ ~ air run kill @s

execute as @e[tag=megiddoAr] at @s facing entity @e[type=#mikatanserver:mobs,sort=nearest,limit=1] feet run teleport ^ ^ ^1
execute as @e[tag=megiddoAr] at @s unless entity @e[type=#mikatanserver:mobs] store result entity @s Rotation[0] float 1 run data get entity @p Rotation[0]
execute as @e[tag=megiddoAr] at @s unless entity @e[type=#mikatanserver:mobs] run tp ^ ^ ^1

execute as @e[tag=megiddoAr] at @s if entity @e[type=#mikatanserver:mobs,distance=..2] run function mikatanserver:item/rod/megiddo/damage

execute as @e[tag=megiddoAr] at @s run particle witch ~ ~ ~ 0.2 0.2 0.2 0.1 100

execute as @e[tag=megiddoAr,scores={megiddoLoop=15..}] run kill @s

schedule function mikatanserver:item/rod/megiddo/move 3t