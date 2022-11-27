scoreboard players set $mana TMP 30
function mikatanserver:main/mana/remove
scoreboard players reset $mana TMP

effect give @a[distance = ..15] instant_health 1 1
effect give @a[distance = ..15] resistance 2 0

particle totem_of_undying ~ ~ ~ 0.5 0.5 0.5 1 20