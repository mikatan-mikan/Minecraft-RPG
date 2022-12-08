scoreboard players set $mana TMP 20
function mikatanserver:main/mana/remove
scoreboard players reset $mana TMP
clear @s diamond_block 1
summon zombie_villager ~ ~ ~