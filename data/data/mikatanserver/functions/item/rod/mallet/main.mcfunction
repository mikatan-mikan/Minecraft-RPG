scoreboard players set $mana TMP 40
function mikatanserver:main/mana/remove
scoreboard players reset $mana TMP

summon armor_stand ~ ~ ~ {Tags:["MalletBombAr"],Small:1b,Invisible:1b,Invulnerable:1b}

function mikatanserver:item/rod/mallet/loop