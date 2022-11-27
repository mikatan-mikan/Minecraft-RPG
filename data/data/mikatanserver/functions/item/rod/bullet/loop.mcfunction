execute as @e[tag=IronPlayerAr] at @s run function mikatanserver:item/rod/bullet/move
execute if entity @e[tag=IronPlayerAr] run schedule function mikatanserver:item/rod/bullet/loop 1t