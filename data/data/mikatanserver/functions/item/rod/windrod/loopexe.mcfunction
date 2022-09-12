scoreboard players add @s windmasiccount 1
execute as @s at @s run particle sweep_attack ~ ~ ~ 0.125 0.125 0.125 1 2
execute as @s at @s run tp @s ^ ^ ^1
execute at @s as @e[distance=..1,type=!armor_stand] if entity @s[type=!player] at @s run function mikatanserver:item/rod/windrod/executation
execute as @s[scores={windmasiccount=..10}] run schedule function mikatanserver:item/rod/windrod/loop 1t
execute if entity @s[scores={windmasiccount=10..}] run kill @s