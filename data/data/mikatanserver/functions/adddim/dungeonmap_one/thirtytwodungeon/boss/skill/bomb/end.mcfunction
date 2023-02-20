particle smoke ~ ~ ~ 0.5 0.5 0.5 1 500
execute as @a[tag=BossBattle32] at @s run playsound entity.generic.explode master @s ~ ~ ~ 2 1
execute if score $32_Difficulty Temporary matches 0 run effect give @a[distance=..15] instant_damage 1 1
execute if score $32_Difficulty Temporary matches 1 run effect give @a[distance=..25] instant_damage 1 2
execute if score $32_Difficulty Temporary matches 2 run effect give @a[distance=..30] instant_damage 1 4
tag @s remove Jumping