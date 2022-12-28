execute as @a[scores={ForestRod=1..}] at @s run function mikatanserver:item/rod/forest/loop
execute as @e[tag=ForestRodAr] at @s run function mikatanserver:item/rod/forest/masic

execute as @a if score @s ForestRod matches 1.. run schedule function mikatanserver:item/rod/forest/re 1t
execute if entity @e[tag=ForestRodAr] run schedule function mikatanserver:item/rod/forest/re 1t