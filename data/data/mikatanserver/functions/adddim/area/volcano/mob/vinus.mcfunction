title @s title {"text": "Ruins Vinus","color": "green"}
playsound block.beacon.power_select master @s ~ ~ ~ 2 2

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
summon zombie -218.5 92 879.5 {Tags:["Field_TagBefVenus"],DeathLootTable:"mikatanserver:area/ruins/venus",Attributes:[{Name:"minecraft:generic.max_health",Base:10},{Name:"minecraft:generic.follow_range",Base:12},{Name:"minecraft:generic.attack_damage",Base:0},{Name:"minecraft:generic.movement_speed",Base:0.2}],CustomName:'[{"text": "ruins venus","color": "green"}]',Silent:true,Health:10,ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:16777215}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:16777215}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:16777215}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;529694016,-32092811,-1863160099,-1709585381],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYWEyYWM2MTRlNTMzMzI4YzA3YTI1Y2ViY2IwMmE0MGQzYmM0MWMxY2MyYzI0YTY1MDY1ZjgzMGIwNTk1MmM0ZiJ9fX0="}]}}}}],ActiveEffects:[{Id:14,ShowParticles:false,Duration:2000000000}],HandDropChances:[0.0f,0.0f],HandItems:[{},{id:"minecraft:iron_hoe",Count:1b}]}
execute store result entity @e[tag=Field_TagBefVenus,limit=1] Pos[0] double 0.1 run scoreboard players get @s NowPlaceX
execute store result entity @e[tag=Field_TagBefVenus,limit=1] Pos[2] double 0.1 run scoreboard players get @s NowPlaceY
## y座標の変更
execute store result score @s NowPlaceY run data get entity @s Pos[1]
scoreboard players operation @s NowPlaceY += $3 int
execute store result entity @e[tag=Field_TagBefVenus,limit=1] Pos[1] double 1 run scoreboard players get @s NowPlaceY
tag @e[tag=Field_TagBefVenus,limit=1] remove Field_TagBefVenus
