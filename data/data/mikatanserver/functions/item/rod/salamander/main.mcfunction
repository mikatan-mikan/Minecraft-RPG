scoreboard players set $mana TMP 35
function mikatanserver:main/mana/remove
scoreboard players reset $mana TMP

effect give @s strength 3 1
playsound item.armor.equip_leather master @s ~ ~ ~ 1 2

execute as @a[distance=0.01..5] run function mikatanserver:item/rod/salamander/fire