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
summon skeleton 243.5 74 -385.5 {Tags:["Field_TagBefEnder"],DeathLootTable:"mikatanserver:area/ender_tier2/skeleton",Attributes:[{Name:"minecraft:generic.max_health",Base:10}],CustomName:'[{"text": "watcher"}]',ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{Unbreakable:1b,display:{color:0}}},{id:"minecraft:leather_leggings",Count:1b,tag:{Unbreakable:1b,display:{color:0}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{Unbreakable:1b,display:{color:0}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;907160796,1821854615,-1727336627,-176309982],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZGFhOGZjOGRlNjQxN2I0OGQ0OGM4MGI0NDNjZjUzMjZlM2Q5ZGE0ZGJlOWIyNWZjZDQ5NTQ5ZDk2MTY4ZmMwIn19fQ=="}]}}}}]}
execute store result entity @e[tag=Field_TagBefEnder,limit=1] Pos[0] double 0.1 run scoreboard players get @s NowPlaceX
execute store result entity @e[tag=Field_TagBefEnder,limit=1] Pos[2] double 0.1 run scoreboard players get @s NowPlaceY
data modify entity @e[tag=Field_TagBefEnder,limit=1] Tags append from storage mikatanserver:tagbox tag[0]
tag @e[distance=..20,type=enderman] add field_enderman
tag @e[distance=..20,type=enderman] add field_ender_angryflag
## y座標の変更
execute store result score @s NowPlaceY run data get entity @s Pos[1]
scoreboard players operation @s NowPlaceY += $3 int
execute store result entity @e[tag=Field_TagBefEnder,limit=1] Pos[1] double 1 run scoreboard players get @s NowPlaceY
tag @e[tag=Field_TagBefEnder,limit=1] remove Field_TagBefEnder