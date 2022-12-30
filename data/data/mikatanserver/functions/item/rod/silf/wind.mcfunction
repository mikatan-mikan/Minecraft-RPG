tag @s add SilfRodExer

scoreboard players set $MK.k.Xpower MK.k.knockbackValue 1000
scoreboard players set $MK.k.Ypower MK.k.knockbackValue 100
scoreboard players set $MK.k.Ypower MK.k.OffsetY 100

execute as @e[type=#mikatanserver:mobs,distance=..5] run effect give @s instant_damage 1 1
execute as @e[type=#mikatanserver:mobs,distance=..5] run function mikatanserver:item/rod/silf/knockback
tag @s remove SilfRodExer