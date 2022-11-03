scoreboard players set $mana TMP 5
function mikatanserver:main/mana/remove
scoreboard players reset $mana TMP

execute as @e[type=#mikatanserver:mobs,distance=..10] run data merge entity @s {Fire:100s}