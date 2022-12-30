scoreboard players set $mana TMP 35
function mikatanserver:main/mana/remove
scoreboard players reset $mana TMP

effect give @s regeneration 1 3 true
playsound item.armor.equip_leather master @s ~ ~ ~ 1 2

function mikatanserver:item/rod/silf/wind