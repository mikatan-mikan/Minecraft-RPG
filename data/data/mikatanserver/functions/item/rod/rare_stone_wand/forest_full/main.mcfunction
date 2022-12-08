scoreboard players set $mana TMP 50
function mikatanserver:main/mana/remove
scoreboard players reset $mana TMP

effect give @a[distance = ..5] instant_health 1 0
effect give @a[distance = ..5] resistance 1 0

particle totem_of_undying ~ ~ ~ 0.5 0.5 0.5 1 20