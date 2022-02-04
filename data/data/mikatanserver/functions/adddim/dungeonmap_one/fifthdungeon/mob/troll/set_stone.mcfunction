data merge entity @s {NoAI:1b}
summon armor_stand ~ ~1.5 ~ {Tags:["FifDunStoneAr","FifDunNotMove","FifDunMob"],ArmorItems:[{},{},{},{id:"minecraft:tuff",Count:1b}],Invisible:1b,Invulnerable:1b,NoGravity:true}
execute store result entity @e[limit=1,sort=nearest,type=armor_stand,tag=FifDunNotMove] Rotation[0] float 1 run data get entity @s Rotation[0]
execute store result entity @e[limit=1,sort=nearest,type=armor_stand,tag=FifDunNotMove] Rotation[1] float 1 run data get entity @s Rotation[1]