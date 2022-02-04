scoreboard players add @s lightningcount 1
execute as @s at @s run tp @s ^ ^ ^1
execute at @s as @e[distance=..1,type=!armor_stand] if entity @s[type=!player] at @s run function mikatanserver:item/rod/lightningrod/executation
# summon lightning_bolt ~ ~ ~
execute as @s[scores={lightningcount=..10}] run function mikatanserver:item/rod/lightningrod/loop
execute if entity @s[scores={lightningcount=10..}] run kill @s