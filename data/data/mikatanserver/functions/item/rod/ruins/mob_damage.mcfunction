
effect give @s[type=#mikatanserver:undead] instant_health 1 0
effect give @s[type=#mikatanserver:not_undead] instant_damage 1 0
execute store result score @s MobNowHP run data get entity @s Health
scoreboard players remove @s MobNowHP 18

execute if score @s MobNowHP matches ..0 run scoreboard players add @a[sort=nearest,limit=1,tag=ruins_exe] attackSxp 1

tag @a[distance=..20,limit=1] remove ruins_exe

kill @e[type=armor_stand,tag=Ruins_Rod_Ar,sort=nearest,limit=1]