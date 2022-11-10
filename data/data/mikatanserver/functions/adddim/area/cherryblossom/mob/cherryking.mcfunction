title @s title {"text": "Cherry King","color": "light_purple"}
playsound entity.player.levelup master @s ~ ~ ~ 1 1.8

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
summon zombie 1079.5 -52 -492.5 {Tags:["Field_TagBefKing"],DeathLootTable:"mikatanserver:area/cherryblossom/king",Attributes:[{Name:"minecraft:generic.max_health",Base:10},{Name:"minecraft:generic.follow_range",Base:12},{Name:"minecraft:generic.attack_damage",Base:0},{Name:"minecraft:generic.movement_speed",Base:0.2}],CustomName:'[{"text": "cherry king","color": "light_purple"}]',Silent:true,Health:10,ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:12124237}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:12124237}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:12124237}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1686047135,-1428929129,-1798552731,-1009125113],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOGVlOTdhMDhhZDA1NGI4MDY4NGU3NmYxMzI5ZGRkMGIxZmEyNzNiMDY5OWVlODZiMjEzNzk3MDRmNzQ2OGNhIn19fQ=="}]}}}}],ActiveEffects:[{Id:14,ShowParticles:false,Duration:2000000000}],HandDropChances:[0.0f,0.0f],HandItems:[{},{id:"minecraft:netherite_hoe",Count:1b,tag:{CustomModelData:1}}]}
execute store result entity @e[tag=Field_TagBefKing,limit=1] Pos[0] double 0.1 run scoreboard players get @s NowPlaceX
execute store result entity @e[tag=Field_TagBefKing,limit=1] Pos[2] double 0.1 run scoreboard players get @s NowPlaceY
## y座標の変更
execute store result score @s NowPlaceY run data get entity @s Pos[1]
scoreboard players operation @s NowPlaceY += $3 int
execute store result entity @e[tag=Field_TagBefKing,limit=1] Pos[1] double 1 run scoreboard players get @s NowPlaceY
tag @e[tag=Field_TagBefKing,limit=1] remove Field_TagBefKing