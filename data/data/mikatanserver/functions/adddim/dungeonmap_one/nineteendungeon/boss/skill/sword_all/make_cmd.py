

for i in range(5):
    for j in range(12):
        print("summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,HandItems:[{Count:1b,id:\"minecraft:diamond_sword\",tag:{Enchantments:[{id:\"minecraft:aqua_affinity\",lvl:1}]}}],DisabledSlots:4144959,Tags:[\"NineteenDunSwAr\",\"NineteenDunMob\",\"NineteenDunArTpBef\",\"NineteenDunSwArDiamond\"],NoGravity:1b}\ndata merge entity @e[tag=NineteenDunArTpBef,limit=1] {Rotation:[" + f"{j * 30 + 30 - 180}.0f,{i * 30 - 60}.0f" + "]}\ntag @e[tag=NineteenDunArTpBef] remove NineteenDunArTpBef\n")