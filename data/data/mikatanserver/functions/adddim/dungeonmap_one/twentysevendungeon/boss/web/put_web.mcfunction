summon armor_stand ~ ~-3.5 ~ {NoGravity:1b,Invisible:1b,Invulnerable:1b,ArmorItems:[{},{},{},{Count:1b,tag:{CustomModelData:3},id:"minecraft:barrier"}],Tags:["TwentysevenDunMob","WebAr"]}
effect give @a[distance=..3] slowness 3 255
effect give @a[distance=..3] weakness 4 255
data merge entity @s {NoAI:1b}