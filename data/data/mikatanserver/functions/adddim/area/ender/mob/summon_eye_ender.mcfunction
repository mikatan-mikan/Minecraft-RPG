##title 表示
title @s title {"text": "Special Zealot","color": "red","bold": true}
playsound entity.wither.spawn master @s ~ ~ ~ 1 1

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
summon enderman 243.5 74 -385.5 {Tags:["Field_TagBefEnder","eye_ender"],DeathLootTable:"mikatanserver:area/ender/eye_enderman",PersistenceRequired:true,carriedBlockState:{Name:"minecraft:end_portal_frame"},Attributes:[{Name:"minecraft:generic.max_health",Base:1}]}
execute store result entity @e[tag=Field_TagBefEnder,limit=1] Pos[0] double 0.1 run scoreboard players get @s NowPlaceX
execute store result entity @e[tag=Field_TagBefEnder,limit=1] Pos[2] double 0.1 run scoreboard players get @s NowPlaceY
tag @e[distance=..20,type=enderman] add field_enderman
## y座標の変更
execute store result score @s NowPlaceY run data get entity @s Pos[1]
scoreboard players operation @s NowPlaceY += $3 int
execute store result entity @e[tag=Field_TagBefEnder,limit=1] Pos[1] double 1 run scoreboard players get @s NowPlaceY
tag @e[tag=Field_TagBefEnder,limit=1] remove Field_TagBefEnder