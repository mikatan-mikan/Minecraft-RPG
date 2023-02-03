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
scoreboard players set @s MK.r.RandValue 100
function mikatanlib:rand/rand_exe
execute if score @s MK.r.RandValue matches ..98 run summon skeleton ~ ~ ~ {Tags:["Salamander.Field_TagBefSalamander"],DeathLootTable:"mikatanserver:area/salamander/ground",Attributes:[{Name:"minecraft:generic.max_health",Base:25},{Name:"minecraft:generic.follow_range",Base:12},{Name:"minecraft:generic.attack_damage",Base:18}],CustomName:'[{"text": "fire spirit","color": "red"}]',ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],ArmorItems:[{},{},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:12199189}}},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:162}}],Health:25,Silent:1b}

execute if score @s MK.r.RandValue matches 99 run summon zombie ~ ~ ~ {Tags:["Salamander.Field_TagBefBreeze"],DeathLootTable:"mikatanserver:area/salamander/vortex",Attributes:[{Name:"minecraft:generic.max_health",Base:5},{Name:"minecraft:generic.follow_range",Base:12},{Name:"minecraft:generic.attack_damage",Base:0},{Name:"minecraft:generic.movement_speed",Base:0.2}],CustomName:'[{"text": "Vortex","color": "red"}]',Silent:true,Health:10,ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:12199189}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:12199189}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:12199189}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1534306740,1697532284,-1098694207,1928605173],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMWZhM2MyNjI3MTQ4MDA4NTJjOWNlMDhhNWVkMGUxYzIzMzkwMmM0N2M5NjA1NmFjMWIwMmU3OWRjMDE2YzRmNCJ9fX0="}]}}}}],ActiveEffects:[{Id:14,ShowParticles:false,Duration:2000000000}],HandDropChances:[0.0f,0.0f],HandItems:[{},{id:"minecraft:netherite_hoe",Count:1b,tag:{CustomModelData:1}}]}
execute store result entity @e[tag=Salamander.Field_TagBefSalamander,limit=1] Pos[0] double 0.1 run scoreboard players get @s NowPlaceX
execute store result entity @e[tag=Salamander.Field_TagBefSalamander,limit=1] Pos[2] double 0.1 run scoreboard players get @s NowPlaceY
data modify entity @e[tag=Salamander.Field_TagBefSalamander,limit=1] Tags append from storage mikatanserver:tagbox tag[0]
tag @e[distance=..20,type=zombie] add field_salamander_mobs
## y座標の変更
execute store result score @s NowPlaceY run data get entity @s Pos[1]
scoreboard players operation @s NowPlaceY += $3 int
execute store result entity @e[tag=Salamander.Field_TagBefSalamander,limit=1] Pos[1] double 1 run scoreboard players get @s NowPlaceY
tag @e[tag=Salamander.Field_TagBefSalamander,limit=1] remove Salamander.Field_TagBefSalamander