## [x,y,z]からx,zを取得
execute store result score @s NowPlaceX run data get entity @s Pos[0]
execute store result score @s NowPlaceY run data get entity @s Pos[2]
## 0.1単位で計算したいので
scoreboard players operation @s NowPlaceX *= $10 int
scoreboard players operation @s NowPlaceY *= $10 int
## 乱数による座標生成
    ## 乱数を生成
    scoreboard players set @s MK.r.RandValue 61
    function mikatanlib:rand/rand_exe
    ## 乱数を加算後3を引いて座標を算出
    scoreboard players operation @s NowPlaceX += @s MK.r.RandValue
    ## 乱数を生成
    scoreboard players set @s MK.r.RandValue 61
    scoreboard players remove @s NowPlaceX 30
    function mikatanlib:rand/rand_exe
    ## 乱数を加算後3を引いて座標を算出
    scoreboard players operation @s NowPlaceY += @s MK.r.RandValue
    scoreboard players remove @s NowPlaceY 30
## 座標代入及びタグの決定]
execute store result score $diff TMP run data get storage mikatanserver:nether_mob_tagbox diff
execute if score $diff TMP matches 0 run summon skeleton ~ ~-3 ~ {Tags:["Field_TagBefZombie"],DeathLootTable:"mikatanserver:area/nether_tier2/zombie_1",Attributes:[{Name:"minecraft:generic.max_health",Base:20},{Name:"minecraft:generic.movement_speed",Base:0.2},{Name:"minecraft:generic.follow_range",Base:10},{Name:"minecraft:generic.attack_damage",Base:15}],CustomName:'[{"text": "hell archer","color": "red"}]',HandDropChances:[0.0f,0.0f],HandItems:[{Count:1b,id:"minecraft:bow",tag:{Enchantments:[{id:"minecraft:punch",lvl:2}]}},{}],ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:11468800}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:11468800}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:11468800}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;22323392,542788032,-1408984113,2046171730],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTQ2NDAwYTAxMWUxMDAxMjljZjA4ZTZkYTM4NzBmNzgzOTBmZTgyNGFjNzM4NTQ1MzgzZWZlN2I2ZjEzOTFmMiJ9fX0="}]}}}}],Silent:true}
execute if score $diff TMP matches 1 run summon skeleton ~ ~-3 ~ {Tags:["Field_TagBefZombie"],DeathLootTable:"mikatanserver:area/nether_tier2/zombie_2",Attributes:[{Name:"minecraft:generic.max_health",Base:20},{Name:"minecraft:generic.movement_speed",Base:0.2},{Name:"minecraft:generic.follow_range",Base:10},{Name:"minecraft:generic.attack_damage",Base:20}],CustomName:'[{"text": "hell flame"}]',ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:16737792}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:16737792}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:16737792}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;690844116,-1450292309,-1867749782,1108981841],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZGY3ZDNkYTZhOWM2ZjRjYTFmNDgwNjJmNmY0ZDljM2YzZTJjZjEzM2U4Yzg1MjhiODc0ZGQ4Nzk2MjZhOTY3NiJ9fX0="}]}}}}]}
execute if score $diff TMP matches 2 run summon zombie ~ ~-3 ~ {Tags:["Field_TagBefZombie"],Health:40,DeathLootTable:"mikatanserver:area/nether_tier2/zombie_3",Attributes:[{Name:"minecraft:generic.max_health",Base:40},{Name:"minecraft:generic.movement_speed",Base:0.25},{Name:"minecraft:generic.follow_range",Base:10},{Name:"minecraft:generic.attack_damage",Base:26}],CustomName:'[{"text": "hell succubus"}]',HandDropChances:[0.0f,0.0f],HandItems:[{Count:1b,id:"minecraft:netherite_hoe",tag:{Enchantments:[{}],CustomModelData:1}},{}],ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:14170682}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:14170682}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:14170682}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-752250403,-2038872867,-1297425851,-1520679551],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzI5NDg5ZGZhZGI2NTI2ZWRmYmZjMDA3MDU4MzJhOTYxNmJkYjQzNzY4ZjE1MmYzNzY0N2Y4ZWM2MDQzMjkyIn19fQ=="}]}}}}],Silent:1b}
execute store result entity @e[tag=Field_TagBefZombie,limit=1] Pos[0] double 0.1 run scoreboard players get @s NowPlaceX
execute store result entity @e[tag=Field_TagBefZombie,limit=1] Pos[2] double 0.1 run scoreboard players get @s NowPlaceY
data modify entity @e[tag=Field_TagBefZombie,limit=1] Tags append from storage mikatanserver:nether_mob_tagbox tag[0]
tag @e[distance=..20,type=zombie] add field_zombie
## y座標の変更
execute store result score @s NowPlaceY run data get entity @s Pos[1]
scoreboard players operation @s NowPlaceY += $3 int
execute store result entity @e[tag=Field_TagBefZombie,limit=1] Pos[1] double 1 run scoreboard players get @s NowPlaceY
tag @e[tag=Field_TagBefZombie,limit=1] remove Field_TagBefZombie