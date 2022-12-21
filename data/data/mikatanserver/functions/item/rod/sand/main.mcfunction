scoreboard players set $mana TMP 10
function mikatanserver:main/mana/remove
scoreboard players reset $mana TMP

execute as @e[type=#mikatanserver:mobs,sort=nearest,limit=1,distance=..10] at @s run function mikatanserver:item/rod/sand/damage