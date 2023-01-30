summon witch -93.5 67 931.5 {Tags:["Area_Ruins_Boss"],Attributes:[{Name:"minecraft:generic.max_health",Base:400},{Name:"minecraft:generic.armor",Base:10}],PersistenceRequired:true,Health:400}
summon armor_stand -93.5 67 931.5 {Tags:["Ruins_BossNowPlaceAr"],Invisible:1b,Invulnerable:1b,Small:1b,NoAI:1b}
execute as @a[tag=FieldRuins] at @s run playsound entity.wither.spawn master @s ~ ~ ~ 1 1
scoreboard players set $ruins_boss_flag field_loop 1

effect give @e[tag=Area_Ruins_Boss] glowing 1000 1

bossbar add ruins_witch "魔術師"
bossbar set ruins_witch players @a[tag=FieldRuins]
bossbar set ruins_witch max 4000
bossbar set ruins_witch color purple
bossbar set ruins_witch value 4000