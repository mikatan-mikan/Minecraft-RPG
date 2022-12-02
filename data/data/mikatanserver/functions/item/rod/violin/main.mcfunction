scoreboard players set $mana TMP 40
function mikatanserver:main/mana/remove
scoreboard players reset $mana TMP

effect give @s strength 2 0
playsound block.anvil.place master @s ~ ~ ~ 1 1.4