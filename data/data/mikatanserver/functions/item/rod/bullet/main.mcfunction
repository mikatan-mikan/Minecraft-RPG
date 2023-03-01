scoreboard players set $mana TMP 30
function mikatanserver:main/mana/remove
scoreboard players reset $mana TMP

playsound entity.ghast.shoot master @s ~ ~ ~ 1 2

summon armor_stand ~ ~ ~ {Tags:["IronPlayerAr","IronPlayerRot1","Bef"],Invisible:1b,Invulnerable:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"iron_block",Count:1b}],HandItems:[{},{}],Rotation:[0.0f,0.0f]}
summon armor_stand ~ ~ ~ {Tags:["IronPlayerAr","IronPlayerRot2","Bef"],Invisible:1b,Invulnerable:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"iron_block",Count:1b}],HandItems:[{},{}],Rotation:[45.0f,0.0f]}
summon armor_stand ~ ~ ~ {Tags:["IronPlayerAr","IronPlayerRot3","Bef"],Invisible:1b,Invulnerable:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"iron_block",Count:1b}],HandItems:[{},{}],Rotation:[90.0f,0.0f]}
summon armor_stand ~ ~ ~ {Tags:["IronPlayerAr","IronPlayerRot4","Bef"],Invisible:1b,Invulnerable:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"iron_block",Count:1b}],HandItems:[{},{}],Rotation:[135.0f,0.0f]}
summon armor_stand ~ ~ ~ {Tags:["IronPlayerAr","IronPlayerRot5","Bef"],Invisible:1b,Invulnerable:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"iron_block",Count:1b}],HandItems:[{},{}],Rotation:[180.0f,0.0f]}
summon armor_stand ~ ~ ~ {Tags:["IronPlayerAr","IronPlayerRot6","Bef"],Invisible:1b,Invulnerable:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"iron_block",Count:1b}],HandItems:[{},{}],Rotation:[-45.0f,0.0f]}
summon armor_stand ~ ~ ~ {Tags:["IronPlayerAr","IronPlayerRot7","Bef"],Invisible:1b,Invulnerable:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"iron_block",Count:1b}],HandItems:[{},{}],Rotation:[-90.0f,0.0f]}
summon armor_stand ~ ~ ~ {Tags:["IronPlayerAr","IronPlayerRot8","Bef"],Invisible:1b,Invulnerable:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"iron_block",Count:1b}],HandItems:[{},{}],Rotation:[-135.0f,0.0f]}

execute if score @s CustomModelData matches 182 run tag @e[tag=IronPlayerAr,tag=Bef] add Tier2
tag @e[tag=IronPlayerAr,tag=Bef] remove Bef

function mikatanserver:item/rod/bullet/loop