## [x,y,z]からx,zを取得
scoreboard players set $tmp NowPlaceX 1187
scoreboard players set $tmp NowPlaceY 811
## 0.1単位で計算したいので
scoreboard players operation $tmp NowPlaceX *= $10 int
scoreboard players operation $tmp NowPlaceY *= $10 int
## 乱数による座標生成
    ## 乱数を生成
    scoreboard players set $tmp MK.r.RandValue 61
    function mikatanlib:rand/rand_exe
    ## 乱数を加算後3を引いて座標を算出
    scoreboard players operation $tmp NowPlaceX += $tmp MK.r.RandValue
    ## 乱数を生成
    scoreboard players set $tmp MK.r.RandValue 61
    scoreboard players remove $tmp NowPlaceX 30
    function mikatanlib:rand/rand_exe
    ## 乱数を加算後3を引いて座標を算出
    scoreboard players operation $tmp NowPlaceY += $tmp MK.r.RandValue
    scoreboard players remove $tmp NowPlaceY 30
function _mikatandebug:error_throw/point_print
## 座標代入及びタグの決定
summon zombie ~ ~ ~ {Tags:["Field_TagBefZombie"],DeathLootTable:"mikatanserver:area/cave/high_zombie",Attributes:[{Name:"minecraft:generic.movement_speed",Base:0.25},{Name:"minecraft:generic.max_health",Base:300},{Name:"minecraft:generic.follow_range",Base:10},{Name:"minecraft:generic.attack_damage",Base:25}],ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:6250335}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:6250335}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:6250335}}},{id:"minecraft:iron_block",Count:1b}],Health:300,CustomName:'[{"text": "cave king","color": "gray"}]',CustomNameVisible:true}
execute store result entity @e[tag=Field_TagBefZombie,limit=1] Pos[0] double 0.1 run scoreboard players get $tmp NowPlaceX
execute store result entity @e[tag=Field_TagBefZombie,limit=1] Pos[2] double 0.1 run scoreboard players get $tmp NowPlaceY
data modify entity @e[tag=Field_TagBefZombie,limit=1] Tags append from storage mikatanserver:tagbox tag[0]
## y座標の変更
scoreboard players set $tmp NowPlaceY 180
scoreboard players operation $tmp NowPlaceY += $3 int
execute store result entity @e[tag=Field_TagBefZombie,limit=1] Pos[1] double 1 run scoreboard players get $tmp NowPlaceY
tag @e[tag=Field_TagBefZombie,limit=1] remove Field_TagBefZombie