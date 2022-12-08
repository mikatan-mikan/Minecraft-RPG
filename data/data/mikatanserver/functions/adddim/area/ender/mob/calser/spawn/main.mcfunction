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
summon zombie 243.5 74 -385.5 {Tags:["Field_TagBefCalser"],DeathLootTable:"mikatanserver:area/ender/calser",Attributes:[{Name:"minecraft:generic.movement_speed",Base:0.3},{Name:"minecraft:generic.max_health",Base:75},{Name:"minecraft:generic.follow_range",Base:15}],ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:12322303}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:12322303}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:12322303}}},{id:"minecraft:amethyst_block",Count:1b}],CustomName:'[{"text": "calser","color": "dark_purple"}]',Silent:1b,Health:75}
execute store result entity @e[tag=Field_TagBefCalser,limit=1] Pos[0] double 0.1 run scoreboard players get @s NowPlaceX
execute store result entity @e[tag=Field_TagBefCalser,limit=1] Pos[2] double 0.1 run scoreboard players get @s NowPlaceY
data modify entity @e[tag=Field_TagBefCalser,limit=1] Tags append from storage mikatanserver:ender_tagbox tag[0]
## y座標の変更
execute store result score @s NowPlaceY run data get entity @s Pos[1]
scoreboard players operation @s NowPlaceY += $3 int
execute store result entity @e[tag=Field_TagBefCalser,limit=1] Pos[1] double 1 run scoreboard players get @s NowPlaceY
tag @e[tag=Field_TagBefCalser,limit=1] remove Field_TagBefCalser