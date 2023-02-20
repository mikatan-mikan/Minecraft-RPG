scoreboard players set $mana TMP 30
function mikatanserver:main/mana/remove
scoreboard players reset $mana TMP

effect give @s saturation 1 0
playsound entity.bat.ambient master @s ~ ~ ~ 2 2
particle happy_villager ~ ~ ~ 0.3 0.8 0.3 3 50

advancement grant @s only mikatanserver:customcrafter/saturationrod