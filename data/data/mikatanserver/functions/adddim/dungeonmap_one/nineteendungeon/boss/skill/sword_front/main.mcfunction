summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,HandItems:[{Count:1b,id:"minecraft:netherite_sword",tag:{CustomModelData:6,Enchantments:[{id:"minecraft:aqua_affinity",lvl:1}]}}],DisabledSlots:4144959,Tags:["NineteenDunSwAr","NineteenDunMob","NineteenDunArTpBef","NineteenDunSwArIron"],NoGravity:1b}
execute store result entity @e[tag=NineteenDunArTpBef,limit=1] Rotation[0] float 1 run data get entity @s Rotation[0]
execute store result entity @e[tag=NineteenDunArTpBef,limit=1] Rotation[1] float 1 run data get entity @s Rotation[1]
tag @e[tag=NineteenDunArTpBef] remove NineteenDunArTpBef