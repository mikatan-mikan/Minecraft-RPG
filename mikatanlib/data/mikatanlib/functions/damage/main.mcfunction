execute store result score @s MobNowHP run data get entity @s Health
scoreboard players remove @s MK.attack.damage 2
scoreboard players operation @s MobNowHP -= @s MK.attack.damage
execute store result entity @s Health float 1 run scoreboard players get @s MobNowHP
effect give @s instant_damage 1 0
tag @a add MK.attack.damage
scoreboard players reset @s MK.attack.damage
scoreboard players reset @s MobNowHP