scoreboard players add @s frozenmasiccount 1
execute as @s at @s run particle minecraft:snowflake ~ ~ ~ 0.125 0.125 0.125 0.1 20
execute as @s at @s run tp @s ^ ^ ^1
execute at @s as @e[distance=..1,type=!armor_stand] if entity @s[type=!player] at @s run function mikatanserver:item/rod/frozenrod/executation
execute as @s[scores={frozenmasiccount=..10}] run schedule function mikatanserver:item/rod/frozenrod/loop 1t
execute if entity @s[scores={frozenmasiccount=10..}] run kill @s