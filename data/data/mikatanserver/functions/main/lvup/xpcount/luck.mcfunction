

scoreboard players add @s luckxp 1
execute if score @s luck-Lv < $EasyLv AllLV run scoreboard players add @s luckxp 4

scoreboard players add @s[scores={LuckBoost_9 = 1..}] luckxp 9

##2022/8/27以降ファーミングラックの統合
clear @s small_amethyst_bud{CustomModelData:2} 1
execute if score @s SmallAmethyst matches 1.. as @s[scores={FarmingStoneFlag=1},predicate=mikatanserver:chance/0.001] at @s run function mikatanserver:main/drap_stone/farming_stone
execute if score @s SmallAmethyst matches 1.. as @s[scores={LuckStoneFlag=1},predicate=mikatanserver:chance/0.005] at @s run function mikatanserver:main/drap_stone/luck_stone
execute if score @s SmallAmethyst matches 1.. as @s[nbt={Inventory:[{"Slot":9b,id:"minecraft:magma_cream",tag:{CustomModelData:31}}]},predicate=mikatanserver:chance/0.01] run function mikatanserver:main/lvup/xpcount/ac/all_xp
execute if score @s SmallAmethyst matches 1.. as @s[nbt={Inventory:[{"Slot":9b,id:"minecraft:magma_cream",tag:{CustomModelData:47}}]},predicate=mikatanserver:chance/0.02] run function mikatanserver:main/lvup/xpcount/ac/all_xp
execute if score @s SmallAmethyst matches 1.. as @s[nbt={Inventory:[{"Slot":9b,id:"minecraft:magma_cream",tag:{CustomModelData:44}}]},predicate=mikatanserver:chance/0.05] run scoreboard players add @s luckxp 1
execute if score @s SmallAmethyst matches 1.. as @s[nbt={Inventory:[{"Slot":9b,id:"minecraft:magma_cream",tag:{CustomModelData:45}}]},predicate=mikatanserver:chance/0.10] run scoreboard players add @s luckxp 1
execute if score @s SmallAmethyst matches 1.. as @s[nbt={SelectedItem:{Count:1b,tag:{onion_talisman:true}}}] run effect give @s speed 1 0
scoreboard players remove @s SmallAmethyst 1

execute as @s[nbt={Inventory:[{"Slot":9b,id:"minecraft:magma_cream",tag:{CustomModelData:10}}]},predicate=mikatanserver:chance/0.05] run scoreboard players add @s hpxp 1
execute as @s[nbt={Inventory:[{"Slot":9b,id:"minecraft:magma_cream",tag:{CustomModelData:11}}]},predicate=mikatanserver:chance/0.10] run scoreboard players add @s hpxp 1
execute as @s[nbt={Inventory:[{"Slot":9b,id:"minecraft:magma_cream",tag:{CustomModelData:12}}]},predicate=mikatanserver:chance/0.20] run scoreboard players add @s hpxp 1
execute as @s[nbt={Inventory:[{"Slot":9b,id:"minecraft:magma_cream",tag:{CustomModelData:26}}]},predicate=mikatanserver:chance/0.50] run scoreboard players add @s hpxp 1
execute as @s[nbt={Inventory:[{"Slot":10b,id:"minecraft:magma_cream",tag:{CustomModelData:27}}]},predicate=mikatanserver:chance/0.10] run scoreboard players add @s hpxp 1

##釣ったときレア泥
execute as @s[predicate=mikatanserver:chance/0.002,scores={fishingcount = 1..}] run function mikatanserver:main/lvup/raredrop/luck
execute as @s[predicate=mikatanserver:chance/0.001,scores={luck-Lv=25..,fishingcount = 1..}] run function mikatanserver:main/lvup/raredrop/fishingloot/item/fishing_rod
execute as @s[predicate=mikatanserver:chance/0.001,scores={luck-Lv=50..,fishingcount = 1..}] run function mikatanserver:main/lvup/raredrop/fishingloot/item/sword
execute as @s[predicate=mikatanserver:chance/0.0001,scores={luck-Lv=55..,fishingcount = 1..}] run function mikatanserver:main/lvup/raredrop/fishingloot/item/fishing_rod_2
execute as @s[predicate=mikatanserver:chance/0.0001,scores={luck-Lv=75..,fishingcount = 1..}] run function mikatanserver:main/lvup/raredrop/fishingloot/item/fishing_rod_3

##特殊ヒット
#mob hit
execute as @s[predicate=mikatanserver:chance/0.01,scores={fishingcount = 1..}] at @s run function mikatanserver:main/lvup/raredrop/fishingloot/zombie
execute as @s[predicate=mikatanserver:chance/0.01,scores={fishingcount = 1..}] at @s run function mikatanserver:main/lvup/raredrop/fishingloot/guardian
execute as @s[predicate=mikatanserver:chance/0.01,scores={luck-Lv=15..,fishingcount = 1..}] at @s run function mikatanserver:main/lvup/raredrop/fishingloot/skelton
execute as @s[predicate=mikatanserver:chance/0.002,scores={luck-Lv=20..,fishingcount = 1..}] at @s run function mikatanserver:main/lvup/raredrop/fishingloot/magma_cube
execute as @s[predicate=mikatanserver:chance/0.01,scores={luck-Lv=25..,fishingcount = 1..}] at @s run function mikatanserver:main/lvup/raredrop/fishingloot/witherskelton
execute as @s[predicate=mikatanserver:chance/0.01,scores={luck-Lv=35..,fishingcount = 1..}] at @s run function mikatanserver:main/lvup/raredrop/fishingloot/witch
execute as @s[predicate=mikatanserver:chance/0.01,scores={luck-Lv=45..,fishingcount = 1..}] at @s run function mikatanserver:main/lvup/raredrop/fishingloot/iron_golem
execute as @s[predicate=mikatanserver:chance/0.01,scores={luck-Lv=55..,fishingcount = 1..}] at @s run function mikatanserver:main/lvup/raredrop/fishingloot/skelton_2

#xp hit
execute as @s[predicate=mikatanserver:chance/0.02,scores={fishingcount = 1..}] at @s run function mikatanserver:main/lvup/raredrop/fishingloot/xp_plus_1
execute as @s[predicate=mikatanserver:chance/0.01,scores={fishingcount = 1..}] at @s run function mikatanserver:main/lvup/raredrop/fishingloot/xp_plus_3
execute as @s[predicate=mikatanserver:chance/0.01,scores={fishingcount = 1..}] at @s run function mikatanserver:main/lvup/raredrop/fishingloot/xp_plus_5
execute as @s[predicate=mikatanserver:chance/0.01,scores={fishingcount = 1..}] at @s run function mikatanserver:main/lvup/raredrop/fishingloot/xp_plus_10
execute as @s[predicate=mikatanserver:chance/0.01,scores={luck-Lv=30..,fishingcount = 1..}] at @s run function mikatanserver:main/lvup/raredrop/fishingloot/xp_plus_15
execute as @s[predicate=mikatanserver:chance/0.01,scores={luck-Lv=35..,fishingcount = 1..}] at @s run function mikatanserver:main/lvup/raredrop/fishingloot/xp_plus_20
execute as @s[predicate=mikatanserver:chance/0.01,scores={luck-Lv=40..,fishingcount = 1..}] at @s run function mikatanserver:main/lvup/raredrop/fishingloot/xp_plus_25

execute as @s[nbt={SelectedItem:{tag:{saintmana:[1]}}},predicate=mikatanserver:chance/0.10] run function mikatanserver:main/lvup/raredrop/fishingloot/saintmana/give
execute as @s[nbt={SelectedItem:{tag:{shieldfishingrod:[1]}}}] run function mikatanserver:main/lvup/raredrop/fishingloot/shieldfishing/main

scoreboard players set @s fishingcount 0

#execute as @s[predicate=mikatanserver:chance/0.20] at @s run function mikatanserver:main/lvup/raredrop/fishingloot/event/xp_plus_1

##アーティファクト
scoreboard players set @s MK.r.RandValue 100
function mikatanlib:rand/rand_exe
scoreboard players add @s MK.r.RandValue 1
scoreboard players operation @s TMP = @s ART.luck
scoreboard players operation @s TMP /= $100 int
scoreboard players operation @s luckxp += @s TMP
scoreboard players operation @s TMP = @s ART.luck
scoreboard players operation @s TMP %= $100 int
execute if score @s MK.r.RandValue <= @s TMP run scoreboard players add @s luckxp 1


##actionbar
function mikatanserver:main/lvup/_view/luck

execute as @s[scores={luck-Lv=..299}] run execute if score @s luckxp >= @s needluckxp run function mikatanserver:main/lvup/xpcount/lucklvup