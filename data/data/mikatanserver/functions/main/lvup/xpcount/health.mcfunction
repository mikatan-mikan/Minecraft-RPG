scoreboard players set @s tradecount 0

scoreboard players add @s hpxp 1

execute as @s[nbt={Inventory:[{"Slot":9b,id:"minecraft:magma_cream",tag:{CustomModelData:7}}]},predicate=mikatanserver:chance/0.05] run scoreboard players add @s hpxp 1
execute as @s[nbt={Inventory:[{"Slot":9b,id:"minecraft:magma_cream",tag:{CustomModelData:8}}]},predicate=mikatanserver:chance/0.10] run scoreboard players add @s hpxp 1
execute as @s[nbt={Inventory:[{"Slot":9b,id:"minecraft:magma_cream",tag:{CustomModelData:9}}]},predicate=mikatanserver:chance/0.20] run scoreboard players add @s hpxp 1

##

##取引したときレア泥
execute as @s[predicate=mikatanserver:chance/0.001] run function mikatanserver:main/lvup/raredrop/health


execute as @s[scores={hp-Lv=..199}] run execute if score @s hpxp >= @s needhpxp run function mikatanserver:main/lvup/xpcount/healthlvup