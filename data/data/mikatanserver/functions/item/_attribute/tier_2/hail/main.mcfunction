scoreboard players set $mana TMP 10
function mikatanserver:main/mana/remove
scoreboard players reset $mana TMP

execute as @e[type=#mikatanserver:mobs,distance=..5] run effect give @s slowness 1 1
execute as @e[type=#mikatanserver:mobs,distance=..5] run effect give @s poison 3 1 true