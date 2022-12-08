scoreboard players set $mana TMP 45
function mikatanserver:main/mana/remove
scoreboard players reset $mana TMP
effect give @a[distance=..10] speed 3 0
effect give @a[distance=..5] instant_health 1 0
effect give @e[type=#mikatanserver:mobs,distance=..5] instant_health 1 0