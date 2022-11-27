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
summon witch -218.5 92 879.5 {Tags:["RU.Field_TagBefWitch"],DeathLootTable:"mikatanserver:area/ruins/witch",Attributes:[{Name:"minecraft:generic.max_health",Base:100},{Name:"minecraft:generic.follow_range",Base:12},{Name:"minecraft:generic.attack_damage",Base:35},{Name:"minecraft:generic.movement_speed",Base:0.2}],CustomName:'[{"text": "ruins witch"}]',Silent:true,Health:100}
execute store result entity @e[tag=RU.Field_TagBefWitch,limit=1] Pos[0] double 0.1 run scoreboard players get @s NowPlaceX
execute store result entity @e[tag=RU.Field_TagBefWitch,limit=1] Pos[2] double 0.1 run scoreboard players get @s NowPlaceY
data modify entity @e[tag=RU.Field_TagBefWitch,limit=1] Tags append from storage mikatanserver:tagbox tag[0]
tag @e[type=witch,tag=field_ruins_masic_witch_1] add field_witch_ruins
tag @e[type=witch,tag=field_ruins_masic_witch_2] add field_witch_ruins
tag @e[type=witch,tag=field_ruins_masic_witch_3] add field_witch_ruins
tag @e[type=witch,tag=field_ruins_masic_witch_4] add field_witch_ruins
tag @e[type=witch,tag=field_ruins_masic_witch_5] add field_witch_ruins
tag @e[type=witch,tag=field_ruins_masic_witch_6] add field_witch_ruins
## y座標の変更
execute store result score @s NowPlaceY run data get entity @s Pos[1]
scoreboard players operation @s NowPlaceY += $3 int
execute store result entity @e[tag=RU.Field_TagBefWitch,limit=1] Pos[1] double 1 run scoreboard players get @s NowPlaceY
tag @e[tag=RU.Field_TagBefWitch,limit=1] remove RU.Field_TagBefWitch