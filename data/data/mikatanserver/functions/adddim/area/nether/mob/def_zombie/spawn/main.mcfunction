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
## 座標代入及びタグの決定]
#防具の色乱数
scoreboard players set @s MK.r.RandValue 2
function mikatanlib:rand/rand_exe
execute if score @s MK.r.RandValue matches 0 run summon zombie 243.5 74 -385.5 {Tags:["Field_TagBefZombie"],DeathLootTable:"mikatanserver:area/nether/zombie_1",Attributes:[{Name:"minecraft:generic.max_health",Base:20},{Name:"minecraft:generic.movement_speed",Base:0.25},{Name:"minecraft:generic.follow_range",Base:15}],CustomName:'[{"text": "flame"}]',ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:16711680}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:16711680}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:16711680}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;2095810738,2136949657,-1413910424,622570141],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjc4ZWYyZTRjZjJjNDFhMmQxNGJmZGU5Y2FmZjEwMjE5ZjViMWJmNWIzNWE0OWViNTFjNjQ2Nzg4MmNiNWYwIn19fQ=="}]}}}}]}
execute if score @s MK.r.RandValue matches 1 run summon zombie 243.5 74 -385.5 {Tags:["Field_TagBefZombie"],DeathLootTable:"mikatanserver:area/nether/zombie_1",Attributes:[{Name:"minecraft:generic.max_health",Base:20},{Name:"minecraft:generic.movement_speed",Base:0.25},{Name:"minecraft:generic.follow_range",Base:15}],CustomName:'[{"text": "flame"}]',ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:16737792}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:16737792}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:16737792}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;2095810738,2136949657,-1413910424,622570141],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjc4ZWYyZTRjZjJjNDFhMmQxNGJmZGU5Y2FmZjEwMjE5ZjViMWJmNWIzNWE0OWViNTFjNjQ2Nzg4MmNiNWYwIn19fQ=="}]}}}}]}
execute store result entity @e[tag=Field_TagBefZombie,limit=1] Pos[0] double 0.1 run scoreboard players get @s NowPlaceX
execute store result entity @e[tag=Field_TagBefZombie,limit=1] Pos[2] double 0.1 run scoreboard players get @s NowPlaceY
data modify entity @e[tag=Field_TagBefZombie,limit=1] Tags append from storage mikatanserver:ender_tagbox tag[0]
tag @e[distance=..20,type=enderman] add field_enderman
tag @e[distance=..20,type=enderman] add field_ender_angryflag
## y座標の変更
execute store result score @s NowPlaceY run data get entity @s Pos[1]
scoreboard players operation @s NowPlaceY += $3 int
execute store result entity @e[tag=Field_TagBefZombie,limit=1] Pos[1] double 1 run scoreboard players get @s NowPlaceY
tag @e[tag=Field_TagBefZombie,limit=1] remove Field_TagBefZombie