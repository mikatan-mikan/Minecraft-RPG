scoreboard players set @s enchantcount 0

scoreboard players add @s manaxp 1

execute as @s[nbt={Inventory:[{"Slot":9b,id:"minecraft:magma_cream",tag:{CustomModelData:13}}]},predicate=mikatanserver:chance/0.05] run scoreboard players add @s manaxp 1
execute as @s[nbt={Inventory:[{"Slot":9b,id:"minecraft:magma_cream",tag:{CustomModelData:14}}]},predicate=mikatanserver:chance/0.10] run scoreboard players add @s manaxp 1
execute as @s[nbt={Inventory:[{"Slot":9b,id:"minecraft:magma_cream",tag:{CustomModelData:15}}]},predicate=mikatanserver:chance/0.20] run scoreboard players add @s manaxp 1
execute as @s[nbt={Inventory:[{"Slot":10b,id:"minecraft:magma_cream",tag:{CustomModelData:28}}]},predicate=mikatanserver:chance/0.15] run scoreboard players add @s manaxp 1
execute as @s[nbt={Inventory:[{"Slot":9b,id:"minecraft:magma_cream",tag:{CustomModelData:33}}]},predicate=mikatanserver:chance/0.40] run scoreboard players add @s manaxp 1

##

##エンチャントしたときレア泥
execute as @s[predicate=mikatanserver:chance/0.002] run function mikatanserver:main/lvup/raredrop/mana


execute as @s[scores={mana-Lv=..199}] run execute if score @s manaxp >= @s needmanaxp run function mikatanserver:main/lvup/xpcount/manalvup