scoreboard players add @e[type=armor_stand,tag=ChaosAr] ChaosArExeTimer 1

execute as @a[tag=ChaosExer] at @s as @e[type=armor_stand,tag=ChaosAr,scores={ChaosArExeTimer=..60}] at @s run particle cloud ~ ~ ~ 1 1 1 0 30

execute as @a[tag=ChaosExer] at @s as @e[type=armor_stand,tag=ChaosAr,scores={ChaosArExeTimer=60..100}] at @s run particle witch ~ ~ ~ 1 1 1 0 40 
execute as @a[tag=ChaosExer] at @s as @e[type=armor_stand,tag=ChaosAr,scores={ChaosArExeTimer=60}] at @s run playsound entity.enderman.teleport master @a[distance=..15] ~ ~ ~ 1 0
execute as @a[tag=ChaosExer] at @s as @e[type=armor_stand,tag=ChaosAr,scores={ChaosArExeTimer=70}] at @s run playsound entity.enderman.teleport master @a[distance=..15] ~ ~ ~ 1 0.3
execute as @a[tag=ChaosExer] at @s as @e[type=armor_stand,tag=ChaosAr,scores={ChaosArExeTimer=80}] at @s run playsound entity.enderman.teleport master @a[distance=..15] ~ ~ ~ 1 0.6
execute as @a[tag=ChaosExer] at @s as @e[type=armor_stand,tag=ChaosAr,scores={ChaosArExeTimer=90}] at @s run playsound entity.enderman.teleport master @a[distance=..15] ~ ~ ~ 1 0.9
execute as @a[tag=ChaosExer] at @s as @e[type=armor_stand,tag=ChaosAr,scores={ChaosArExeTimer=60..100}] at @s as @e[distance=..10,type=#mikatanserver:mobs] at @s run tp @s @e[distance=..10,limit=1,type=armor_stand,tag=ChaosAr] 

execute as @a[tag=ChaosExer] at @s as @e[type=armor_stand,tag=ChaosAr,scores={ChaosArExeTimer=120}] at @s run playsound entity.generic.explode master @a[distance=..15] ~ ~ ~ 1 1.5
execute as @a[tag=ChaosExer] at @s as @e[type=armor_stand,tag=ChaosAr,scores={ChaosArExeTimer=120}] at @s run particle explosion ~ ~ ~ 1 1 1 0 10

execute as @a[tag=ChaosExer] at @s as @e[type=armor_stand,tag=ChaosAr,scores={ChaosArExeTimer=60..120}] at @s as @e[distance=..10,type=#mikatanserver:mobs] run function mikatanserver:item/rod/chaos/exedamage

execute as @a[tag=ChaosExer] at @s if entity @e[type=armor_stand,limit=1,tag=ChaosAr,scores={ChaosArExeTimer=..120}] run schedule function mikatanserver:item/rod/chaos/executation 1t

execute unless entity @e[tag=ChaosAr] run tag @a remove ChaosExer