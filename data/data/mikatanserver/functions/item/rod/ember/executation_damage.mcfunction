execute store result score @s MobNowHP run data get entity @s Health

effect give @s[type=#mikatanserver:undead] instant_health 1 1
effect give @s[type=#mikatanserver:not_undead] instant_damage 1 1

scoreboard players remove @s MobNowHP 23



execute if score @s MobNowHP matches ..0 run scoreboard players add @a[sort=nearest,limit=1,tag=emberexe] attackSxp 1

execute as @a[tag=emberexe] run tag @s remove emberexe

execute store result entity @s Health float 1 run scoreboard players get @s MobNowHP