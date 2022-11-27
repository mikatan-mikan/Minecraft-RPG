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
scoreboard players set @s MK.r.RandValue 4
function mikatanlib:rand/rand_exe
execute if score @s MK.r.RandValue matches 0 run summon skeleton ~ ~-3 ~ {Tags:["Field_TagBefZombie"],Health:200,DeathLootTable:"mikatanserver:area/nether_tier2/boss/zombie_1",Attributes:[{Name:"minecraft:generic.max_health",Base:200},{Name:"minecraft:generic.movement_speed",Base:0.2},{Name:"minecraft:generic.follow_range",Base:10},{Name:"minecraft:generic.attack_damage",Base:15}],CustomName:'[{"text": "hell archer","color": "red"}]',HandDropChances:[0.0f,0.0f],HandItems:[{},{Count:1b,id:"minecraft:bow",tag:{Enchantments:[{id:"minecraft:punch",lvl:2}]}}],ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:192255}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:192255}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:192255}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1689556894,1935033782,-1380828861,1167129726],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNmMzZWJlNzJmZDIzYmUwZWU4N2ZhNGM0YjdjMTQ3MjI0YWM2ZGU4OGJiODQyYzQ2M2RlOTk2Y2Q5NGYxMWVkNyJ9fX0="}]}}}}],Silent:true,PersistenceRequired:true}
execute if score @s MK.r.RandValue matches 1 run summon skeleton ~ ~-3 ~ {Tags:["Field_TagBefZombie"],Health:200,DeathLootTable:"mikatanserver:area/nether_tier2/boss/zombie_2",Attributes:[{Name:"minecraft:generic.max_health",Base:200},{Name:"minecraft:generic.movement_speed",Base:0.2},{Name:"minecraft:generic.follow_range",Base:10},{Name:"minecraft:generic.attack_damage",Base:20}],CustomName:'[{"text": "flame"}]',ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:9175295}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:9175295}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:9175295}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1931047033,308628630,-2099025347,-2027893878],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOGE1YmNjNGU4N2M1MDkxZWM3ZmQ4MDI3YjQxMWYyOTdiYWFkNmYzY2QwNGNiZWMxYWM4NmY1MDA2NzFmNzU5YSJ9fX0="}]}}}}],PersistenceRequired:true}
execute if score @s MK.r.RandValue matches 3 run summon zombie ~ ~-3 ~ {Tags:["Field_TagBefZombie"],Health:200,DeathLootTable:"mikatanserver:area/nether_tier2/boss/zombie_3",Attributes:[{Name:"minecraft:generic.max_health",Base:200},{Name:"minecraft:generic.movement_speed",Base:0.25},{Name:"minecraft:generic.follow_range",Base:10},{Name:"minecraft:generic.attack_damage",Base:26}],CustomName:'[{"text": "flame"}]',ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:16776238}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:16776238}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:16776238}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;314199312,152846490,-1666992752,-2066883840],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzU4N2JjMTIxNjZhMmY4MTYyNzI5ZWU4NjYzYTllZjcxZDQ2NmViM2NkMTkzZmUxNDAyNzZiNTljYWM3NTlhMyJ9fX0="}]}}}}],Silent:1b,PersistenceRequired:true}
execute store result entity @e[tag=Field_TagBefZombie,limit=1] Pos[0] double 0.1 run scoreboard players get @s NowPlaceX
execute store result entity @e[tag=Field_TagBefZombie,limit=1] Pos[2] double 0.1 run scoreboard players get @s NowPlaceY
data modify entity @e[tag=Field_TagBefZombie,limit=1] Tags append from storage mikatanserver:nether_mob_tagbox tag[0]
tag @e[distance=..20,type=zombie] add field_zombie
## y座標の変更
execute store result score @s NowPlaceY run data get entity @s Pos[1]
scoreboard players operation @s NowPlaceY += $3 int
execute store result entity @e[tag=Field_TagBefZombie,limit=1] Pos[1] double 1 run scoreboard players get @s NowPlaceY
tag @e[tag=Field_TagBefZombie,limit=1] remove Field_TagBefZombie