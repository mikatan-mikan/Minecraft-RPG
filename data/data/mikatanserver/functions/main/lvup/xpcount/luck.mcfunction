scoreboard players set @s fishingcount 0

scoreboard players add @s luckxp 1

scoreboard players add @s[scores={LuckBoost_9 = 1..}] luckxp 1

execute as @s[nbt={Inventory:[{"Slot":9b,id:"minecraft:magma_cream",tag:{CustomModelData:10}}]},predicate=mikatanserver:chance/0.05] run scoreboard players add @s hpxp 1
execute as @s[nbt={Inventory:[{"Slot":9b,id:"minecraft:magma_cream",tag:{CustomModelData:11}}]},predicate=mikatanserver:chance/0.10] run scoreboard players add @s hpxp 1
execute as @s[nbt={Inventory:[{"Slot":9b,id:"minecraft:magma_cream",tag:{CustomModelData:12}}]},predicate=mikatanserver:chance/0.20] run scoreboard players add @s hpxp 1
execute as @s[nbt={Inventory:[{"Slot":9b,id:"minecraft:magma_cream",tag:{CustomModelData:26}}]},predicate=mikatanserver:chance/0.50] run scoreboard players add @s hpxp 1
execute as @s[nbt={Inventory:[{"Slot":10b,id:"minecraft:magma_cream",tag:{CustomModelData:27}}]},predicate=mikatanserver:chance/0.10] run scoreboard players add @s hpxp 1

##釣ったときレア泥
execute as @s[predicate=mikatanserver:chance/0.002] run function mikatanserver:main/lvup/raredrop/luck
execute as @s[predicate=mikatanserver:chance/0.001,scores={luck-Lv=25..}] run function mikatanserver:main/lvup/raredrop/fishingloot/item/fishing_rod
execute as @s[predicate=mikatanserver:chance/0.001,scores={luck-Lv=50..}] run function mikatanserver:main/lvup/raredrop/fishingloot/item/sword
execute as @s[predicate=mikatanserver:chance/0.0001,scores={luck-Lv=55..}] run function mikatanserver:main/lvup/raredrop/fishingloot/item/fishing_rod_2
execute as @s[predicate=mikatanserver:chance/0.0001,scores={luck-Lv=75..}] run function mikatanserver:main/lvup/raredrop/fishingloot/item/fishing_rod_3

##特殊ヒット
#mob hit
execute as @s[predicate=mikatanserver:chance/0.01] at @s run function mikatanserver:main/lvup/raredrop/fishingloot/zombie
execute as @s[predicate=mikatanserver:chance/0.01] at @s run function mikatanserver:main/lvup/raredrop/fishingloot/guardian
execute as @s[predicate=mikatanserver:chance/0.01,scores={luck-Lv=15..}] at @s run function mikatanserver:main/lvup/raredrop/fishingloot/skelton
execute as @s[predicate=mikatanserver:chance/0.002,scores={luck-Lv=20..}] at @s run function mikatanserver:main/lvup/raredrop/fishingloot/magma_cube
execute as @s[predicate=mikatanserver:chance/0.01,scores={luck-Lv=25..}] at @s run function mikatanserver:main/lvup/raredrop/fishingloot/witherskelton
execute as @s[predicate=mikatanserver:chance/0.01,scores={luck-Lv=35..}] at @s run function mikatanserver:main/lvup/raredrop/fishingloot/witch
execute as @s[predicate=mikatanserver:chance/0.01,scores={luck-Lv=45..}] at @s run function mikatanserver:main/lvup/raredrop/fishingloot/iron_golem
execute as @s[predicate=mikatanserver:chance/0.01,scores={luck-Lv=55..}] at @s run function mikatanserver:main/lvup/raredrop/fishingloot/skelton_2

#xp hit
execute as @s[predicate=mikatanserver:chance/0.02] at @s run function mikatanserver:main/lvup/raredrop/fishingloot/xp_plus_1
execute as @s[predicate=mikatanserver:chance/0.01] at @s run function mikatanserver:main/lvup/raredrop/fishingloot/xp_plus_3
execute as @s[predicate=mikatanserver:chance/0.01] at @s run function mikatanserver:main/lvup/raredrop/fishingloot/xp_plus_5
execute as @s[predicate=mikatanserver:chance/0.01] at @s run function mikatanserver:main/lvup/raredrop/fishingloot/xp_plus_10
execute as @s[predicate=mikatanserver:chance/0.01,scores={luck-Lv=30..}] at @s run function mikatanserver:main/lvup/raredrop/fishingloot/xp_plus_15
execute as @s[predicate=mikatanserver:chance/0.01,scores={luck-Lv=35..}] at @s run function mikatanserver:main/lvup/raredrop/fishingloot/xp_plus_20
execute as @s[predicate=mikatanserver:chance/0.01,scores={luck-Lv=40..}] at @s run function mikatanserver:main/lvup/raredrop/fishingloot/xp_plus_25

execute as @s[nbt={SelectedItem:{tag:{saintmana:[1]}}},predicate=mikatanserver:chance/0.10] run function mikatanserver:main/lvup/raredrop/fishingloot/saintmana/give
execute as @s[nbt={SelectedItem:{tag:{shieldfishingrod:[1]}}}] run function mikatanserver:main/lvup/raredrop/fishingloot/shieldfishing/main


#execute as @s[predicate=mikatanserver:chance/0.20] at @s run function mikatanserver:main/lvup/raredrop/fishingloot/event/xp_plus_1

execute as @s[scores={luck-Lv=..199}] run execute if score @s luckxp >= @s needluckxp run function mikatanserver:main/lvup/xpcount/lucklvup