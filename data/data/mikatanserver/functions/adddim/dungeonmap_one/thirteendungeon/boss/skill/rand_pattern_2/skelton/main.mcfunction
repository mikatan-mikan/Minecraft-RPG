
tellraw @a[tag=DungeonPlay_13] [{"text": "神子>>","color": "white"},{"text": "召喚：スケルトン！！","color": "red"}]
execute as @a[tag=DungeonPlay_13] at @a run playsound entity.wither.spawn master @s ~ ~ ~ 0.5 2
summon skeleton ~ ~ ~ {Attributes:[{Name:"minecraft:generic.max_health",Base:45}],Health:45,HandDropChances:[0.0f,0.0f],HandItems:[{Count:1b,id:"minecraft:bow",tag:{Enchantments:[{id:"minecraft:punch",lvl:10s}]}}],Tags:["ThirteenDunMob"]}