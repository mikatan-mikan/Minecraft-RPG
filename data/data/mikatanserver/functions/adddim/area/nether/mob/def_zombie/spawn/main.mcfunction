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
execute store result score $diff TMP run data get storage mikatanserver:nether_mob_tagbox diff
execute if score $diff TMP matches 0 run summon zombie 347.5 -31 -1213.5 {Tags:["Field_TagBefZombie"],DeathLootTable:"mikatanserver:area/nether/zombie_1",Attributes:[{Name:"minecraft:generic.max_health",Base:20},{Name:"minecraft:generic.movement_speed",Base:0.3},{Name:"minecraft:generic.follow_range",Base:10},{Name:"minecraft:generic.attack_damage",Base:15}],CustomName:'[{"text": "flame"}]',ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:16711680}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:16711680}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:16711680}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1767051932,1535462297,-1205513267,2057279270],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMzg5NTdkNTAyM2M5MzdjNGM0MWFhMjQxMmQ0MzQxMGJkYTIzY2Y3OWE5ZjZhYjM2Yjc2ZmVmMmQ3YzQyOSJ9fX0="}]}}}}],Silent:true}
execute if score $diff TMP matches 1 run summon skeleton 347.5 -31 -1213.5 {Tags:["Field_TagBefZombie"],DeathLootTable:"mikatanserver:area/nether/zombie_2",Attributes:[{Name:"minecraft:generic.max_health",Base:20},{Name:"minecraft:generic.movement_speed",Base:0.2},{Name:"minecraft:generic.follow_range",Base:10},{Name:"minecraft:generic.attack_damage",Base:20}],CustomName:'[{"text": "flame"}]',ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:16737792}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:16737792}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:16737792}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;538197348,1191724843,-1524381047,-898668465],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvY2JkODY3YjE5NmFlNWI3ZDBhMTg4YjBjMWY4MzFlMDUyYzFkYjQ3OGJhOWRiYTRiMWM4NTA2NzAwYzQxMWY1YSJ9fX0="}]}}}}]}
execute if score $diff TMP matches 2 run summon piglin 347.5 -31 -1213.5 {Tags:["Field_TagBefZombie"],IsImmuneToZombification:true,Health:40,DeathLootTable:"mikatanserver:area/nether/zombie_3",Attributes:[{Name:"minecraft:generic.max_health",Base:40},{Name:"minecraft:generic.movement_speed",Base:0.35},{Name:"minecraft:generic.follow_range",Base:10},{Name:"minecraft:generic.attack_damage",Base:25}],CustomName:'[{"text": "flame"}]',ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:16767232}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:16767232}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:16767232}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;2095810738,2136949657,-1413910424,622570141],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjc4ZWYyZTRjZjJjNDFhMmQxNGJmZGU5Y2FmZjEwMjE5ZjViMWJmNWIzNWE0OWViNTFjNjQ2Nzg4MmNiNWYwIn19fQ=="}]}}}}]}
execute store result entity @e[tag=Field_TagBefZombie,limit=1] Pos[0] double 0.1 run scoreboard players get @s NowPlaceX
execute store result entity @e[tag=Field_TagBefZombie,limit=1] Pos[2] double 0.1 run scoreboard players get @s NowPlaceY
data modify entity @e[tag=Field_TagBefZombie,limit=1] Tags append from storage mikatanserver:nether_mob_tagbox tag[0]
tag @e[distance=..20,type=zombie] add field_zombie
## y座標の変更
execute store result score @s NowPlaceY run data get entity @s Pos[1]
scoreboard players operation @s NowPlaceY += $3 int
execute store result entity @e[tag=Field_TagBefZombie,limit=1] Pos[1] double 1 run scoreboard players get @s NowPlaceY
tag @e[tag=Field_TagBefZombie,limit=1] remove Field_TagBefZombie