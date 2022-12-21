scoreboard players set $mana TMP 30
function mikatanserver:main/mana/remove
scoreboard players reset $mana TMP

effect clear @s absorption
effect give @s absorption 10 0
playsound block.glass.break master @s ~ ~ ~ 1 2
particle cloud ~ ~ ~ 0.3 0.8 0.3 3 50