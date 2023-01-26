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
## 座標代入及びタグの決定
summon zombie ~ ~ ~ {Tags:["Un.Field_TagBefRed"],DeathLootTable:"mikatanserver:area/universe/red",Attributes:[{Name:"minecraft:generic.max_health",Base:50},{Name:"minecraft:generic.follow_range",Base:12},{Name:"minecraft:generic.attack_damage",Base:15}],CustomName:'[{"text": "orcy","color": "red"}]',HandDropChances:[0.0f,0.0f],HandItems:[{Count:1b,id:"minecraft:netherite_hoe",tag:{CustomModelData:1}},{Count:1b,id:"minecraft:netherite_hoe",tag:{CustomModelData:1}}],ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:16711680}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:16711680}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:16711680}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1971029150,236406777,-1594983674,-1164605743],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMWQ2NTVkNzk1MjNmOGM3MzQ1ZDQ1MGVkOWZhY2VhNzA4ZWRlZjJlNzA4N2UwYzQ2MzE3N2E3ODQ0ODBmNDkzZSJ9fX0="}]}}}}],Health:45,Silent:1b}
execute store result entity @e[tag=Un.Field_TagBefRed,limit=1] Pos[0] double 0.1 run scoreboard players get @s NowPlaceX
execute store result entity @e[tag=Un.Field_TagBefRed,limit=1] Pos[2] double 0.1 run scoreboard players get @s NowPlaceY
data modify entity @e[tag=Un.Field_TagBefRed,limit=1] Tags append from storage mikatanserver:tagbox tag[0]
tag @e[distance=..20,type=zombie] add field_universe_mobs
## y座標の変更
execute store result score @s NowPlaceY run data get entity @s Pos[1]
scoreboard players operation @s NowPlaceY += $3 int
execute store result entity @e[tag=Un.Field_TagBefRed,limit=1] Pos[1] double 1 run scoreboard players get @s NowPlaceY
tag @e[tag=Un.Field_TagBefRed,limit=1] remove Un.Field_TagBefRed