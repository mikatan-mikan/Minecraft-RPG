scoreboard players set $mana TMP 100
function mikatanserver:main/mana/remove
scoreboard players reset $mana TMP

tag @s add crystalexe

summon armor_stand ~ ~1 ~1 {Tags:["CrystalAr"],Invisible:1b,Invulnerable:1b,Rotation:[0.0f,0.0f]}
summon armor_stand ~-1 ~1 ~ {Tags:["CrystalAr"],Invisible:1b,Invulnerable:1b,Rotation:[90.0f,0.0f]}
summon armor_stand ~ ~1 ~-1 {Tags:["CrystalAr"],Invisible:1b,Invulnerable:1b,Rotation:[180.0f,0.0f]}
summon armor_stand ~1 ~1 ~ {Tags:["CrystalAr"],Invisible:1b,Invulnerable:1b,Rotation:[-90.0f,0.0f]}
summon armor_stand ~-0.7 ~1 ~0.7 {Tags:["CrystalAr"],Invisible:1b,Invulnerable:1b,Rotation:[45.0f,0.0f]}
summon armor_stand ~-0.7 ~1 ~-0.7 {Tags:["CrystalAr"],Invisible:1b,Invulnerable:1b,Rotation:[135.0f,0.0f]}
summon armor_stand ~0.7 ~1 ~0.7 {Tags:["CrystalAr"],Invisible:1b,Invulnerable:1b,Rotation:[-45.0f,0.0f]}
summon armor_stand ~0.7 ~1 ~-0.7 {Tags:["CrystalAr"],Invisible:1b,Invulnerable:1b,Rotation:[-135.0f,0.0f]}

playsound block.glass.break master @a[distance=..20] ~ ~ ~ 1 2

particle totem_of_undying ~ ~ ~ 0.2 0.2 0.2 1 20

function mikatanserver:item/rod/crystal/executation