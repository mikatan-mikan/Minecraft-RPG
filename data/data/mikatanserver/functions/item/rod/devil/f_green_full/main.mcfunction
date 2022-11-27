scoreboard players set $mana TMP 40
function mikatanserver:main/mana/remove
scoreboard players reset $mana TMP

playsound item.nether_wart.plant master @s ~ ~ ~ 2 1
effect give @a[distance=..15] instant_health 1 1
scoreboard players add @a[distance=..15] mana 5
execute as @a[distance=..15] if score @s mana > @s manamax run scoreboard players operation @s mana = @s manamax