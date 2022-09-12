summon armor_stand ~ ~ ~ {Motion:[0.0,5.0,0.0],Invisible:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:ice",Count:1b}],Tags:["EigDunMob","Dun8founAr"]}
summon armor_stand ~ ~ ~ {Motion:[2.5,4.0,0.0],Invisible:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:ice",Count:1b}],Tags:["EigDunMob","Dun8founAr"]}
summon armor_stand ~ ~ ~ {Motion:[-2.5,4.0,0.0],Invisible:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:ice",Count:1b}],Tags:["EigDunMob","Dun8founAr"]}
summon armor_stand ~ ~ ~ {Motion:[0.0,4.0,2.5],Invisible:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:ice",Count:1b}],Tags:["EigDunMob","Dun8founAr"]}
summon armor_stand ~ ~ ~ {Motion:[0.0,4.0,-2.5],Invisible:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:ice",Count:1b}],Tags:["EigDunMob","Dun8founAr"]}

playsound entity.ghast.shoot master @a[tag=DungeonPlay_8,distance=..30] ~ ~ ~ 2 1
tellraw @a[tag=DungeonPlay_8] [{"text": "Neptune Guardian>>","color": "aqua"},{"text": "fountain","color": "aqua"}]