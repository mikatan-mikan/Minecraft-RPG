effect give @s glowing 5 0

summon armor_stand ~ ~ ~ {Motion:[0.0,1.0,0.0],Tags:["ThirteenDunMob","13_StarAr"],ArmorItems:[{},{},{},{id:"minecraft:white_wool",Count:1b,tag:{Enchantments:[{id:"minecraft:aqua_affinity",lvl:1}]}}],Invisible:1b,Invulnerable:1b}

execute as @a[tag=DungeonPlay_13] at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 2

tellraw @a[tag=DungeonPlay_13] [{"text": "神子>>","color": "white"},{"text": "星の輝き！！","color": "yellow"}]