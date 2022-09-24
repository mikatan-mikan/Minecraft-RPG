scoreboard players set @s enchantcount 0

scoreboard players add @s manaxp 1

execute as @s[nbt={Inventory:[{"Slot":9b,id:"minecraft:magma_cream",tag:{CustomModelData:13}}]},predicate=mikatanserver:chance/0.05] run scoreboard players add @s manaxp 1
execute as @s[nbt={Inventory:[{"Slot":9b,id:"minecraft:magma_cream",tag:{CustomModelData:14}}]},predicate=mikatanserver:chance/0.10] run scoreboard players add @s manaxp 1
execute as @s[nbt={Inventory:[{"Slot":9b,id:"minecraft:magma_cream",tag:{CustomModelData:15}}]},predicate=mikatanserver:chance/0.20] run scoreboard players add @s manaxp 1
execute as @s[nbt={Inventory:[{"Slot":9b,id:"minecraft:magma_cream",tag:{CustomModelData:46}}]},predicate=mikatanserver:chance/0.30] run scoreboard players add @s manaxp 1
execute as @s[nbt={Inventory:[{"Slot":10b,id:"minecraft:magma_cream",tag:{CustomModelData:36}}]},predicate=mikatanserver:chance/0.20] run scoreboard players add @s manaxp 1
execute as @s[nbt={Inventory:[{"Slot":10b,id:"minecraft:magma_cream",tag:{CustomModelData:28}}]},predicate=mikatanserver:chance/0.15] run scoreboard players add @s manaxp 1
execute as @s[nbt={Inventory:[{"Slot":9b,id:"minecraft:magma_cream",tag:{CustomModelData:33}}]},predicate=mikatanserver:chance/0.40] run scoreboard players add @s manaxp 1
execute as @p if entity @s[nbt={Inventory:[{"Slot":100b,tag:{masic_armor:true}},{"Slot":101b,tag:{masic_armor:true}},{"Slot":102b,tag:{masic_armor:true}},{"Slot":103b,tag:{masic_armor:true}}]},predicate=mikatanserver:chance/0.20] run scoreboard players add @s manaxp 1
execute as @p if entity @s[nbt={Inventory:[{"Slot":100b,tag:{masician_armor:true}},{"Slot":101b,tag:{masician_armor:true}},{"Slot":102b,tag:{masician_armor:true}},{"Slot":103b,tag:{masician_armor:true}}]},predicate=mikatanserver:chance/0.30] run scoreboard players add @s manaxp 1

##

##エンチャントしたときレア泥
execute as @s[predicate=mikatanserver:chance/0.002] run function mikatanserver:main/lvup/raredrop/mana

##アーティファクト
scoreboard players set @s MK.r.RandValue 100
function mikatanlib:rand/rand_exe
scoreboard players add @s MK.r.RandValue 1
scoreboard players operation @s TMP = @s ART.mana
scoreboard players operation @s TMP /= $100 int
scoreboard players operation @s manaxp += @s TMP
scoreboard players operation @s TMP = @s ART.mana
scoreboard players operation @s TMP %= $100 int
execute if score @s MK.r.RandValue <= @s TMP run scoreboard players add @s manaxp 1


execute as @s[scores={mana-Lv=..199}] run execute if score @s manaxp >= @s needmanaxp run function mikatanserver:main/lvup/xpcount/manalvup