scoreboard players set $mana TMP 40
function mikatanserver:main/mana/remove
scoreboard players reset $mana TMP

scoreboard players set @s ForestRod 40

summon armor_stand ~ ~ ~ {Tags:["ForestRodAr"],Small:1b,Invisible:1b,Invulnerable:1b}

function mikatanserver:item/rod/forest/re