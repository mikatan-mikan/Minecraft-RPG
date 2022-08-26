summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,HandItems:[{Count:1b,id:"minecraft:netherite_sword",tag:{Enchantments:[{id:"minecraft:aqua_affinity",lvl:1}],CustomModelData:2}}],DisabledSlots:4144959,Tags:["TwelvethDunSwAr","TwelveDunMob","TweDunArTpBef","BossAtkAr"]}

tp @e[type=armor_stand,tag=TweDunArTpBef] @s
execute store result entity @e[tag=throughSwordAr,sort=nearest,limit=1] Rotation[0] float 1 run data get entity @s Rotation[0]
execute store result entity @e[tag=throughSwordAr,sort=nearest,limit=1] Rotation[1] float 1 run data get entity @s Rotation[1]
tag @e[tag=TweDunArTpBef] remove TweDunArTpBef