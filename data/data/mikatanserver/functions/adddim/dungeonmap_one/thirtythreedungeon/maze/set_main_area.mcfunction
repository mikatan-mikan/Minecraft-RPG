place template minecraft:dun_33_base ~ ~ ~
execute as @e[tag=Dun33MazeMar] at @s unless block ~ ~ ~-1 air as @e[tag=Dun33CreateMar] at @s run place template minecraft:dun_33_base_door_2 ~ ~ ~
execute as @e[tag=Dun33MazeMar] at @s unless block ~ ~ ~1 air as @e[tag=Dun33CreateMar] at @s run place template minecraft:dun_33_base_door_4 ~ ~ ~
execute as @e[tag=Dun33MazeMar] at @s unless block ~-1 ~ ~ air as @e[tag=Dun33CreateMar] at @s run place template minecraft:dun_33_base_door_1 ~ ~ ~
execute as @e[tag=Dun33MazeMar] at @s unless block ~1 ~ ~ air as @e[tag=Dun33CreateMar] at @s run place template minecraft:dun_33_base_door_3 ~ ~ ~
execute if score $33_dungeon_put maze matches 1.. run summon armor_stand ~6 ~ ~6 {Tags:["ThirtythreeDunMobArmor","ThirtythreeDunArmor"],Invisible:1b,Invulnerable:1b}