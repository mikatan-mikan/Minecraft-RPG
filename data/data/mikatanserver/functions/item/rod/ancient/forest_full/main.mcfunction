scoreboard players set $mana TMP 20
function mikatanserver:main/mana/remove
scoreboard players reset $mana TMP

effect give @a[distance=..2] instant_health 1 0
scoreboard players add @a[distance=0.0000001..2] mana 5
execute as @a[distance=0.0000001..2] if score @s mana > @s manamax run scoreboard players operation @s mana = @s manamax 