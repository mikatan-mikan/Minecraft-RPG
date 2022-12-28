#周囲5mの味方に即時回復1を与え、自身に耐性4(2s)を付与する

scoreboard players set $mana TMP 30
function mikatanserver:main/mana/remove
scoreboard players reset $mana TMP

effect give @a[distance=0.001..5] instant_health 1 0

effect give @s resistance 2 3

particle wax_on ~ ~ ~ 0.5 0.5 0.5 1 20