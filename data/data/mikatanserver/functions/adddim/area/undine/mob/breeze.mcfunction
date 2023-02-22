title @s title {"text": "Hailer","color": "aqua"}
playsound item.armor.equip_leather master @s ~ ~ ~ 1 1.6

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
summon zombie ~ ~ ~ {Tags:["Undine.Field_TagBefBreeze"],DeathLootTable:"mikatanserver:area/undine/hailer",Attributes:[{Name:"minecraft:generic.max_health",Base:5},{Name:"minecraft:generic.follow_range",Base:12},{Name:"minecraft:generic.attack_damage",Base:0},{Name:"minecraft:generic.movement_speed",Base:0.2}],CustomName:'[{"text": "Hailer","color": "aqua"}]',Silent:true,Health:10,ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:179639}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:179639}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:179639}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1106458063,-204255845,-1605776564,455869927],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMzM2YmExZGFiYmNhYmJkNjI3NzBjZWNlMDIwMmViZDliYjA2NDllY2E1MzExZWUyMmMzZDBmMjk4MWU5MDg5MCJ9fX0="}]}}}}],ActiveEffects:[{Id:14,ShowParticles:false,Duration:2000000000}],HandDropChances:[0.0f,0.0f],HandItems:[{},{id:"minecraft:netherite_hoe",Count:1b,tag:{CustomModelData:3}}]}
execute store result entity @e[tag=Undine.Field_TagBefBreeze,limit=1] Pos[0] double 0.1 run scoreboard players get @s NowPlaceX
execute store result entity @e[tag=Undine.Field_TagBefBreeze,limit=1] Pos[2] double 0.1 run scoreboard players get @s NowPlaceY
## y座標の変更
execute store result score @s NowPlaceY run data get entity @s Pos[1]
scoreboard players operation @s NowPlaceY += $2 int
execute store result entity @e[tag=Undine.Field_TagBefBreeze,limit=1] Pos[1] double 1 run scoreboard players get @s NowPlaceY
tag @e[tag=Undine.Field_TagBefBreeze,limit=1] remove Undine.Field_TagBefBreeze