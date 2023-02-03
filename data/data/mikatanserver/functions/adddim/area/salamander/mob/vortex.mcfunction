title @s title {"text": "Breeze","color": "green"}
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
summon zombie ~ ~ ~ {Tags:["Salamander.Field_TagBefBreeze"],DeathLootTable:"mikatanserver:area/salamander/breeze",Attributes:[{Name:"minecraft:generic.max_health",Base:5},{Name:"minecraft:generic.follow_range",Base:12},{Name:"minecraft:generic.attack_damage",Base:0},{Name:"minecraft:generic.movement_speed",Base:0.2}],CustomName:'[{"text": "Breeze","color": "green"}]',Silent:true,Health:10,ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:2211074}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:2211074}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:2211074}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1325186019,-86751024,-2146068169,-1904723037],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNWI2MmIzZjQyNTlkNGE3NTY3OTcwOTdhNmUxODE0ZmI0Njk4MDQyM2U4NmFkMjQ4ODFlOTgyMjRmOTFkY2FhMSJ9fX0="}]}}}}],ActiveEffects:[{Id:14,ShowParticles:false,Duration:2000000000}],HandDropChances:[0.0f,0.0f],HandItems:[{},{id:"minecraft:netherite_hoe",Count:1b,tag:{CustomModelData:3}}]}
execute store result entity @e[tag=Salamander.Field_TagBefBreeze,limit=1] Pos[0] double 0.1 run scoreboard players get @s NowPlaceX
execute store result entity @e[tag=Salamander.Field_TagBefBreeze,limit=1] Pos[2] double 0.1 run scoreboard players get @s NowPlaceY
## y座標の変更
execute store result score @s NowPlaceY run data get entity @s Pos[1]
scoreboard players operation @s NowPlaceY += $2 int
execute store result entity @e[tag=Salamander.Field_TagBefBreeze,limit=1] Pos[1] double 1 run scoreboard players get @s NowPlaceY
tag @e[tag=Salamander.Field_TagBefBreeze,limit=1] remove Salamander.Field_TagBefBreeze