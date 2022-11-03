function mikatanserver:main/manyuse/damage




execute if score @e[distance=..6,limit=1,type=armor_stand,tag=ChaosAr] ChaosArExeTimer matches 60..65 store result score @s MobNowHP run data get entity @s Health
execute if score @e[distance=..6,limit=1,type=armor_stand,tag=ChaosAr] ChaosArExeTimer matches 60..65 run scoreboard players operation @s MobNowHP -= num ONE
execute if score @s MobNowHP matches ..0 run scoreboard players add @p attackSxp 1
execute if score @e[distance=..6,limit=1,type=armor_stand,tag=ChaosAr] ChaosArExeTimer matches 60..65 store result entity @s Health float 1 run scoreboard players get @s MobNowHP
execute if score @e[distance=..6,limit=1,type=armor_stand,tag=ChaosAr] ChaosArExeTimer matches 60..65 run function mikatanserver:main/manyuse/damage

execute if score @e[distance=..6,limit=1,type=armor_stand,tag=ChaosAr] ChaosArExeTimer matches 100 store result score @s MobNowHP run data get entity @s Health
execute if score @e[distance=..6,limit=1,type=armor_stand,tag=ChaosAr] ChaosArExeTimer matches 100 run scoreboard players operation @s MobNowHP -= num FIVE
execute if score @s MobNowHP matches ..0 run scoreboard players add @p attackSxp 1
execute if score @e[distance=..6,limit=1,type=armor_stand,tag=ChaosAr] ChaosArExeTimer matches 100 store result entity @s Health float 1 run scoreboard players get @s MobNowHP
execute if score @e[distance=..6,limit=1,type=armor_stand,tag=ChaosAr] ChaosArExeTimer matches 100 run function mikatanserver:main/manyuse/damage

execute if score @e[distance=..6,limit=1,type=armor_stand,tag=ChaosAr] ChaosArExeTimer matches 120 store result score @s MobNowHP run data get entity @s Health
execute if score @e[distance=..6,limit=1,type=armor_stand,tag=ChaosAr] ChaosArExeTimer matches 120 run scoreboard players operation @s MobNowHP -= num TWO
execute if score @s MobNowHP matches ..0 run scoreboard players add @p attackSxp 1
execute if score @e[distance=..6,limit=1,type=armor_stand,tag=ChaosAr] ChaosArExeTimer matches 120 store result entity @s Health float 1 run scoreboard players get @s MobNowHP
execute if score @e[distance=..6,limit=1,type=armor_stand,tag=ChaosAr] ChaosArExeTimer matches 120 run function mikatanserver:main/manyuse/damage



