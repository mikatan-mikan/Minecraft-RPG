summon armor_stand ~ ~ ~ {Tags:["TwentyfiveDunMob","25_EffectAr"],Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:sand",Count:1b}],Invisible:1b,NoGravity:1b}
summon slime ~ ~1 ~ {Tags:["TwentyfiveDunMob","25_EffectAr_Slime"],Invulnerable:1b,ActiveEffects:[{Id:14,Duration:2000000000,Amplifier:1,ShowParticles:false}],Size:2,Attributes:[{Name:"minecraft:generic.max_health",Base:1024}],Health:1024,NoAI:1b,Silent:1b}
execute as @a[tag=DungeonPlay_25] at @s run playsound item.totem.use master @s ~ ~ ~ 0.1 2
execute as @e[tag=25_EffectAr] at @s run particle totem_of_undying ~ ~ ~ 0.5 0.5 0.5 1 100