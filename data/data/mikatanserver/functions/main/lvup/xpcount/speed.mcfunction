execute if data entity @s[scores={deepslatecount=1..}] SelectedItem.tag.ice run effect give @s haste 1 0 true

scoreboard players set @s stonecount 0
scoreboard players set @s cobblestonecount 0
scoreboard players set @s deepslatecount 0
scoreboard players set @s NRtonecount 0
scoreboard players set @s EStonecount 0
scoreboard players set @s AndesiteCount 0
scoreboard players set @s DioriteCount 0
scoreboard players set @s GraniteCount 0

scoreboard players add @s speedxp 1

execute as @s[scores={AngelStoneFlag=1},predicate = mikatanserver:chance/0.001] at @s run function mikatanserver:main/drap_stone/angel_stone
execute as @s[scores={AngelStoneFlag=1},predicate = mikatanserver:chance/0.0005] at @s run function mikatanserver:main/drap_stone/spirit_mass

execute as @s[nbt={Inventory:[{"Slot":9b,id:"minecraft:magma_cream",tag:{CustomModelData:1}}]},predicate=mikatanserver:chance/0.05] run scoreboard players add @s speedxp 1
execute as @s[nbt={Inventory:[{"Slot":9b,id:"minecraft:magma_cream",tag:{CustomModelData:2}}]},predicate=mikatanserver:chance/0.10] run scoreboard players add @s speedxp 1
execute as @s[nbt={Inventory:[{"Slot":9b,id:"minecraft:magma_cream",tag:{CustomModelData:3}}]},predicate=mikatanserver:chance/0.20] run scoreboard players add @s speedxp 1
execute as @s[nbt={Inventory:[{"Slot":9b,id:"minecraft:magma_cream",tag:{CustomModelData:19}}]},predicate=mikatanserver:chance/0.30] run scoreboard players add @s speedxp 1

##石を掘ったときレア泥
execute as @s[predicate=mikatanserver:chance/0.000002] run function mikatanserver:main/lvup/raredrop/speed

execute as @s[scores={speed-Lv=..199}] run execute if score @s speedxp >= @s needspeedxp run function mikatanserver:main/lvup/xpcount/speedlvup