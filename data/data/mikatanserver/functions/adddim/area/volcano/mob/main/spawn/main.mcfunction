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
scoreboard players set @s MK.r.RandValue 5
function mikatanlib:rand/rand_exe
execute if score @s MK.r.RandValue matches 0..1 run summon zombie ~ ~ ~ {Tags:["Vo.Field_TagBefZombie"],DeathLootTable:"mikatanserver:area/volcano/zombie",Attributes:[{Name:"minecraft:generic.max_health",Base:45},{Name:"minecraft:generic.follow_range",Base:12},{Name:"minecraft:generic.attack_damage",Base:22}],CustomName:'[{"text": "vollent","color": "red"}]',ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:11807274}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:11807274}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:11807274}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1823449051,-1643953244,-1338577622,793247611],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZmEzNGI4Y2ViNWIzOWRlMjY2ODkxM2UzYmFiZjY5YTViZWEwN2IzNzQ0ZGNjOGVlNzFlYWUyNGFkZjcyZGZjMiJ9fX0="}]}}}}],Health:45,Silent:1b}
execute if score @s MK.r.RandValue matches 2..3 run summon skeleton ~ ~ ~ {Tags:["Vo.Field_TagBefZombie"],DeathLootTable:"mikatanserver:area/volcano/skeleton",Attributes:[{Name:"minecraft:generic.max_health",Base:35},{Name:"minecraft:generic.follow_range",Base:12},{Name:"minecraft:generic.attack_damage",Base:20}],CustomName:'[{"text": "volcus","color": "gold"}]',ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:11807274}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:11807274}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:11807274}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-491152411,36128641,-1863101344,-1929337348],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjQyMWIzYTJkNjhhNzkwNTNjOGJlZTNjM2JiM2Y2NjVkNTE0NjlmYzFlM2QzNWE4YzVlYTJmMWI3MzMzNyJ9fX0="}]}}}}],Health:40,Silent:1b}
execute if score @s MK.r.RandValue matches 4 run summon creeper ~ ~ ~ {Tags:["Vo.Field_TagBefZombie"],DeathLootTable:"mikatanserver:area/volcano/creeper",Attributes:[{Name:"minecraft:generic.max_health",Base:10}],CustomName:'[{"text": "volmones","color": "#ea5506"}]',ActiveEffects:[{Id:14,Ambient:true,Duration:2000000000,ShowParticles:true}],Health:10,Silent:1b}
execute store result entity @e[tag=Vo.Field_TagBefZombie,limit=1] Pos[0] double 0.1 run scoreboard players get @s NowPlaceX
execute store result entity @e[tag=Vo.Field_TagBefZombie,limit=1] Pos[2] double 0.1 run scoreboard players get @s NowPlaceY
data modify entity @e[tag=Vo.Field_TagBefZombie,limit=1] Tags append from storage mikatanserver:tagbox tag[0]
tag @e[distance=..20,type=zombie] add field_volcano_mobs
## y座標の変更
execute store result score @s NowPlaceY run data get entity @s Pos[1]
scoreboard players operation @s NowPlaceY += $3 int
execute store result entity @e[tag=Vo.Field_TagBefZombie,limit=1] Pos[1] double 1 run scoreboard players get @s NowPlaceY
tag @e[tag=Vo.Field_TagBefZombie,limit=1] remove Vo.Field_TagBefZombie