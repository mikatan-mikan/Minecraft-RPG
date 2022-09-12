scoreboard players remove @s mana 100

tag @s add crystalexe

summon armor_stand ~ ~1 ~ {Tags:["CrystalAr"],Invisible:1b,Invulnerable:1b,Rotation:[0.0f,0.0f]}
summon armor_stand ~ ~1 ~ {Tags:["CrystalAr"],Invisible:1b,Invulnerable:1b,Rotation:[90.0f,0.0f]}
summon armor_stand ~ ~1 ~ {Tags:["CrystalAr"],Invisible:1b,Invulnerable:1b,Rotation:[180.0f,0.0f]}
summon armor_stand ~ ~1 ~ {Tags:["CrystalAr"],Invisible:1b,Invulnerable:1b,Rotation:[-90.0f,0.0f]}
summon armor_stand ~ ~1 ~ {Tags:["CrystalAr"],Invisible:1b,Invulnerable:1b,Rotation:[45.0f,0.0f]}
summon armor_stand ~ ~1 ~ {Tags:["CrystalAr"],Invisible:1b,Invulnerable:1b,Rotation:[135.0f,0.0f]}
summon armor_stand ~ ~1 ~ {Tags:["CrystalAr"],Invisible:1b,Invulnerable:1b,Rotation:[-45.0f,0.0f]}
summon armor_stand ~ ~1 ~ {Tags:["CrystalAr"],Invisible:1b,Invulnerable:1b,Rotation:[-135.0f,0.0f]}

playsound block.glass.break master @a[distance=..20] ~ ~ ~ 1 2

particle totem_of_undying ~ ~ ~ 0.2 0.2 0.2 1 20

function mikatanserver:item/rod/crystal/executation