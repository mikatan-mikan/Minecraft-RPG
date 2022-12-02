scoreboard players add $AincientAr Temporary 1

execute as @e[tag=AincientAr] at @s run particle block iron_block ~ ~ ~ 0 0 0 1 10

execute as @e[tag=AincientAr] at @s run tp ^ ^ ^0.4

execute as @e[tag=AincientAr] at @s as @e[type=#mikatanserver:mobs,distance=..0.5] at @s run function mikatanserver:item/rod/ancient/ruins_full/damage

execute if score $AincientAr Temporary matches ..25 run function mikatanserver:item/rod/ancient/ruins_full/loop_exe
execute if score $AincientAr Temporary matches 25.. run kill @e[tag=AincientAr]