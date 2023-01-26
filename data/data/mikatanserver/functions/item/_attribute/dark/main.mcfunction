scoreboard players set $mana TMP 5
function mikatanserver:main/mana/remove
scoreboard players reset $mana TMP

tp @e[type=#mikatanserver:mobs,distance=..5] @s