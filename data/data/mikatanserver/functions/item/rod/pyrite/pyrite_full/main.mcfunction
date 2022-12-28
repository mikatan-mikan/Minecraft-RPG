scoreboard players set $mana TMP 30
function mikatanserver:main/mana/remove
scoreboard players reset $mana TMP

effect clear @s absorption
effect give @s absorption 10 0
effect give @s regeneration 4 2

give @s firework_rocket 1

particle wax_on ~ ~ ~ 0.5 0.5 0.5 1 20