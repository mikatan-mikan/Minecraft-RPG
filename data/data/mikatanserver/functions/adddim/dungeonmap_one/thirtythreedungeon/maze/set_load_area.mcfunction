place template minecraft:dun_33_load ~ ~ ~
execute as @e[tag=Dun33MazeMar] at @s unless block ~ ~ ~-1 air as @e[tag=Dun33CreateMar] at @s run place template minecraft:dun_33_load_door_2 ~ ~ ~ 
execute as @e[tag=Dun33MazeMar] at @s unless block ~ ~ ~1 air as @e[tag=Dun33CreateMar] at @s run place template minecraft:dun_33_load_door_4 ~ ~ ~
execute as @e[tag=Dun33MazeMar] at @s unless block ~-1 ~ ~ air as @e[tag=Dun33CreateMar] at @s run place template minecraft:dun_33_load_door_1 ~ ~ ~
execute as @e[tag=Dun33MazeMar] at @s unless block ~1 ~ ~ air as @e[tag=Dun33CreateMar] at @s run place template minecraft:dun_33_load_door_3 ~ ~ ~