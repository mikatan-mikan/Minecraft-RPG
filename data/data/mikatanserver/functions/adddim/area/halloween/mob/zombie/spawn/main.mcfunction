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
    #スケルトン or ゾンビ の決定
    scoreboard players set @s MK.r.RandValue 2
    function mikatanlib:rand/rand_exe
#ゾンビなら
execute if score @s MK.r.RandValue matches 0 run summon zombie 846.5 165 -597.5 {Tags:["Field_TagBefZombie"],DeathLootTable:"mikatanserver:area/halloween/zombie",Attributes:[{Name:"minecraft:generic.max_health",Base:50},{Name:"minecraft:generic.follow_range",Base:10},{Name:"minecraft:generic.movement_speed",Base:0.35},{Name:"minecraft:generic.attack_damage",Base:20}],CustomName:'[{"text": "pumpkin ghost","color": "dark_purple"}]',ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:16741120}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:16741120}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:16741120}}},{id:"minecraft:carved_pumpkin",Count:1b}],HandDropChances:[0.0f,0.0f],HandItems:[{},{id:"minecraft:stone_axe",Count:1b}],Health:40}
#スケルトンなら
execute if score @s MK.r.RandValue matches 0 run summon skeleton 846.5 165 -597.5 {Tags:["Field_TagBefZombie"],DeathLootTable:"mikatanserver:area/halloween/skeleton",Attributes:[{Name:"minecraft:generic.max_health",Base:40},{Name:"minecraft:generic.follow_range",Base:10},{Name:"minecraft:generic.movement_speed",Base:0.25},{Name:"minecraft:generic.attack_damage",Base:20}],CustomName:'[{"text": "pumpkin phantom","color": "gold"}]',ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:16741120}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:16741120}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:16741120}}},{id:"minecraft:jack_o_lantern",Count:1b}],HandItems:[{},{id:"minecraft:netherite_axe",Count:1b,tag:{CustomModelData:5}}],Health:50}
execute store result entity @e[tag=Field_TagBefZombie,limit=1] Pos[0] double 0.1 run scoreboard players get @s NowPlaceX
execute store result entity @e[tag=Field_TagBefZombie,limit=1] Pos[2] double 0.1 run scoreboard players get @s NowPlaceY
data modify entity @e[tag=Field_TagBefZombie,limit=1] Tags append from storage mikatanserver:tagbox tag[0]
data remove storage mikatanserver:tagbox tag
tag @e[distance=..20,type=zombie] add field_zombie_halloween
## y座標の変更
execute store result score @s NowPlaceY run data get entity @s Pos[1]
scoreboard players operation @s NowPlaceY += $3 int
execute store result entity @e[tag=Field_TagBefZombie,limit=1] Pos[1] double 1 run scoreboard players get @s NowPlaceY
tag @e[tag=Field_TagBefZombie,limit=1] remove Field_TagBefZombie