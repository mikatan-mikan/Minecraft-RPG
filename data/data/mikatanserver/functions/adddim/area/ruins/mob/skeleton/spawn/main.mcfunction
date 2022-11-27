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
function _mikatandebug:error_throw/point_print
## 座標代入及びタグの決定
summon skeleton -218.5 92 881.5 {Tags:["RU.Field_TagBefSkeleton"],DeathLootTable:"mikatanserver:area/ruins/skeleton",Attributes:[{Name:"minecraft:generic.max_health",Base:35},{Name:"minecraft:generic.follow_range",Base:15},{Name:"minecraft:generic.attack_damage",Base:25}],ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],ArmorItems:[{},{},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:369408}}},{id:"minecraft:skeleton_skull",Count:1b}],HandItems:[{},{id:"minecraft:diamond_axe",Count:1b,tag:{Enchantments:[{id:"minecraft:sharpness",lvl:5s}]}}],HandDropChances:[0.0f,0.0f],CustomName:'[{"text": "ruins skeleton"}]',ActiveEffects:[{Id:14,ShowParticles:false,Duration:2000000000}],Health:40}
execute store result entity @e[tag=RU.Field_TagBefSkeleton,limit=1] Pos[0] double 0.1 run scoreboard players get @s NowPlaceX
execute store result entity @e[tag=RU.Field_TagBefSkeleton,limit=1] Pos[2] double 0.1 run scoreboard players get @s NowPlaceY
data modify entity @e[tag=RU.Field_TagBefSkeleton,limit=1] Tags append from storage mikatanserver:tagbox tag[0]
tag @e[distance=..20,type=skeleton] add field_skeleton
## y座標の変更
execute store result score @s NowPlaceY run data get entity @s Pos[1]
scoreboard players operation @s NowPlaceY += $3 int
execute store result entity @e[tag=RU.Field_TagBefSkeleton,limit=1] Pos[1] double 1 run scoreboard players get @s NowPlaceY
tag @e[tag=RU.Field_TagBefSkeleton,limit=1] remove RU.Field_TagBefSkeleton