scoreboard players set $mana TMP 50
function mikatanserver:main/mana/remove
scoreboard players reset $mana TMP

summon armor_stand ~ ~ ~ {Tags:["ChaosAr"],Invisible:1b,Invulnerable:1b}

tag @a remove ChaosExer
tag @s add ChaosExer

function mikatanserver:item/rod/chaos/executation