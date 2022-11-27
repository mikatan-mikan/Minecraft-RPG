scoreboard players set $mana TMP 30
function mikatanserver:main/mana/remove
scoreboard players reset $mana TMP

effect clear @s absorption
effect give @s absorption 10 1

give @s firework_rocket 1

particle wax_off ~ ~ ~ 0.5 0.5 0.5 1 20