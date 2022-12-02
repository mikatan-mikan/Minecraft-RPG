scoreboard players set $mana TMP 50
function mikatanserver:main/mana/remove
scoreboard players reset $mana TMP

summon armor_stand ~ ~ ~ {Tags:["SaxophoneAr"],Small:1b,Invisible:1b,Invulnerable:1b}

function mikatanserver:item/rod/saxophone/loop