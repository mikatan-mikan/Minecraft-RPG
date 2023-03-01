scoreboard players set $mana TMP 5
function mikatanserver:main/mana/remove
scoreboard players reset $mana TMP

tp @e[type=#mikatanserver:mobs,distance=..3] @s
effect give @s absorption 3 0
effect give @s resistance 3 0