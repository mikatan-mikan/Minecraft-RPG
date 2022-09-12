effect give @s[type=#mikatanserver:undead] instant_health 1 0
effect give @s[type=#mikatanserver:not_undead] instant_damage 1 0
#hp計算
particle block iron_block ~ ~ ~ 0.25 0.25 0.25 0.5 20
playsound item.totem.use master @a[distance=..10] ~ ~ ~ 0.2 2
execute store result score @s MobNowHP run data get entity @s Health
scoreboard players remove @s MobNowHP 5
execute if score @s MobNowHP matches ..0 run scoreboard players add @p[tag=throughSwordExecute] attackSxp 1
execute store result entity @s Health float 1 run scoreboard players get @s MobNowHP