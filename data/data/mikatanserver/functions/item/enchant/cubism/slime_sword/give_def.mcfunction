scoreboard players set $mana TMP 5
function mikatanserver:main/mana/remove
scoreboard players reset $mana TMP

playsound block.anvil.place master @s ~ ~ ~ 1 1

effect give @s resistance 1 0