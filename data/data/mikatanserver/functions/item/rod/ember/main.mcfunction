scoreboard players remove @s mana 40

execute if entity @s[nbt={Inventory:[{Slot:100b,tag:{ember_ar:1b}},{Slot:101b,tag:{ember_ar:1b}},{Slot:102b,tag:{ember_ar:1b}},{Slot:103b,tag:{ember_ar:1b}}]}] run scoreboard players add @s mana 25

tag @s add emberexe

summon armor_stand ~ ~1 ~ {Tags:["EmberAr"],Invisible:1b,Invulnerable:1b}

execute store result entity @e[tag=EmberAr,limit=1,sort=nearest] Rotation[0] float 1 run data get entity @s Rotation[0]

execute store result entity @e[tag=EmberAr,limit=1,sort=nearest] Rotation[1] float 1 run data get entity @s Rotation[1]

playsound entity.ghast.shoot master @a[distance=..20] ~ ~ ~ 0.5 1.3

function mikatanserver:item/rod/ember/executation

