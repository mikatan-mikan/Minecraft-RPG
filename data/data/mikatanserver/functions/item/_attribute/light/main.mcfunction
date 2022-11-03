scoreboard players set $mana TMP 5
function mikatanserver:main/mana/remove
scoreboard players reset $mana TMP

execute as @e[type=#mikatanserver:mobs,distance=..5] run effect give @s glowing 5 0