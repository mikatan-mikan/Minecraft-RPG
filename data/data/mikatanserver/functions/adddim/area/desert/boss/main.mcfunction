summon husk -2301.5 108 1239.5 {Tags:["Area_Desert_Boss"],Attributes:[{Name:"minecraft:generic.max_health",Base:400},{Name:"minecraft:generic.armor",Base:10}],PersistenceRequired:true,Health:400,ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:16770835},Enchantments:[{id:"minecraft:protection",lvl:3s}]}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:16770835},Enchantments:[{id:"minecraft:protection",lvl:3s}]}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:16770835},Enchantments:[{id:"minecraft:protection",lvl:3s}]}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;654436390,-1302904508,-1692901027,-781297060],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvM2I4M2Q4YzZiZmUyM2ViMTRjODQ1YmQxNjU1OGFiMzRlZmZlZWYzY2Q5NDAwMjhkN2VkYWU1YjliZmYyMDFhZSJ9fX0="}]}}}}]}
summon armor_stand -2301.5 108 1239.5 {Tags:["Desert_BossNowPlaceAr"],Invisible:1b,Invulnerable:1b,Small:1b,NoAI:1b}
execute as @a[tag=FieldDesert] at @s run playsound entity.wither.spawn master @s ~ ~ ~ 1 1
scoreboard players set $desert_boss_flag field_loop 1

effect give @e[tag=Area_Desert_Boss] glowing 1000000 1

bossbar add desert_boss "ファラオ"
bossbar set desert_boss players @a[tag=FieldDesert]
bossbar set desert_boss max 400
bossbar set desert_boss color yellow
bossbar set desert_boss value 400