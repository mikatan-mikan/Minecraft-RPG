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
summon skeleton ~ ~ ~ {Tags:["Undine.Field_TagBefUndine"],DeathLootTable:"mikatanserver:area/undine/sea",Attributes:[{Name:"minecraft:generic.max_health",Base:25},{Name:"minecraft:generic.follow_range",Base:12},{Name:"minecraft:generic.attack_damage",Base:18}],CustomName:'[{"text": "sea masician","color": "aqua"}]',ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],ArmorItems:[{},{},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:1818828}}},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:176}}],Health:25,Silent:1b}
execute store result entity @e[tag=Undine.Field_TagBefUndine,limit=1] Pos[0] double 0.1 run scoreboard players get @s NowPlaceX
execute store result entity @e[tag=Undine.Field_TagBefUndine,limit=1] Pos[2] double 0.1 run scoreboard players get @s NowPlaceY
data modify entity @e[tag=Undine.Field_TagBefUndine,limit=1] Tags append from storage mikatanserver:tagbox tag[0]
tag @e[distance=..20,type=zombie] add field_undine_mobs
## y座標の変更
execute store result score @s NowPlaceY run data get entity @s Pos[1]
scoreboard players operation @s NowPlaceY += $3 int
execute store result entity @e[tag=Undine.Field_TagBefUndine,limit=1] Pos[1] double 1 run scoreboard players get @s NowPlaceY
tag @e[tag=Undine.Field_TagBefUndine,limit=1] remove Undine.Field_TagBefUndine