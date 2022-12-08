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
scoreboard players set @s MK.r.RandValue 2
function mikatanlib:rand/rand_exe
execute if score @s MK.r.RandValue matches 0 run summon zombie -119.5 251 404.5 {Tags:["Field_TagBefZombie_Ice2023W"],DeathLootTable:"mikatanserver:area/new-year_2023/weak_zombie",Health:30,Attributes:[{Name:"minecraft:generic.max_health",Base:30},{Name:"minecraft:generic.follow_range",Base:12},{Name:"minecraft:generic.movement_speed",Base:0.25},{Name:"minecraft:generic.attack_damage",Base:23}],CustomName:'[{"text": "frost zombie","color": "aqua"}]',ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:7729151},Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:1s}]}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:7729151},Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:1s}]}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:7729151},Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:1s}]}},{id:"minecraft:packed_ice",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:1s}]}}]}
execute if score @s MK.r.RandValue matches 1 run summon zombie -119.5 251 404.5 {Tags:["Field_TagBefZombie_Ice2023W"],DeathLootTable:"mikatanserver:area/new-year_2023/weak_zombie",Health:30,Attributes:[{Name:"minecraft:generic.max_health",Base:30},{Name:"minecraft:generic.follow_range",Base:12},{Name:"minecraft:generic.movement_speed",Base:0.25},{Name:"minecraft:generic.attack_damage",Base:23}],CustomName:'[{"text": "frost zombie","color": "white"}]',ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:16777215},Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:1s}]}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:16777215},Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:1s}]}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:16777215},Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:1s}]}},{id:"minecraft:snow_block",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:1s}]}}]}
execute store result entity @e[tag=Field_TagBefZombie_Ice2023W,limit=1] Pos[0] double 0.1 run scoreboard players get @s NowPlaceX
execute store result entity @e[tag=Field_TagBefZombie_Ice2023W,limit=1] Pos[2] double 0.1 run scoreboard players get @s NowPlaceY
data modify entity @e[tag=Field_TagBefZombie_Ice2023W,limit=1] Tags append from storage mikatanserver:tagbox tag[0]
tag @e[distance=..20,type=zombie] add field_enderman
## y座標の変更
execute store result score @s NowPlaceY run data get entity @s Pos[1]
scoreboard players operation @s NowPlaceY += $3 int
execute store result entity @e[tag=Field_TagBefZombie_Ice2023W,limit=1] Pos[1] double 1 run scoreboard players get @s NowPlaceY
tag @e[tag=Field_TagBefZombie_Ice2023W,limit=1] remove Field_TagBefZombie_Ice2023W