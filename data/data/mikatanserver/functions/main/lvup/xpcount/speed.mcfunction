##ice
execute if data entity @s[scores={deepslatecount=1..}] SelectedItem.tag.ice run effect give @s haste 1 0 true

##batch
execute if entity @s[scores={deepslatecount=1..},nbt={Inventory:[{"Slot":11b,id:"minecraft:magma_cream",tag:{CustomModelData:40,deepslate_tier:1}}]}] run effect give @s haste 1 1
execute if entity @s[scores={deepslatecount=1..},nbt={Inventory:[{"Slot":11b,id:"minecraft:magma_cream",tag:{CustomModelData:40,deepslate_tier:2}}]}] run effect give @s haste 1 2
execute if entity @s[nbt={Inventory:[{"Slot":11b,id:"minecraft:magma_cream",tag:{CustomModelData:41}}]}] run effect give @s haste 1 0

execute if entity @s[nbt={SelectedItem:{tag:{Smelting:true}}}] at @s run function mikatanserver:item/enchant/smelting/lv_check

##経験値に変換
scoreboard players set @s stonecount 0
scoreboard players set @s cobblestonecount 0
scoreboard players set @s deepslatecount 0
scoreboard players set @s NRtonecount 0
scoreboard players set @s EStonecount 0
scoreboard players set @s AndesiteCount 0
scoreboard players set @s DioriteCount 0
scoreboard players set @s GraniteCount 0
scoreboard players set @s coal_ore_cnt 0
scoreboard players set @s iron_ore_cnt 0
scoreboard players set @s gold_ore_cnt 0
scoreboard players set @s redstone_ore_cnt 0
scoreboard players set @s lapis_ore_cnt 0
scoreboard players set @s diamond_ore_cnt 0
scoreboard players set @s emerald_ore_cnt 0
scoreboard players set @s D_coal_ore_cnt 0
scoreboard players set @s D_iron_ore_cnt 0
scoreboard players set @s D_gold_ore_cnt 0
scoreboard players set @s D_redstone_ore_cnt 0
scoreboard players set @s D_lapis_ore_cnt 0
scoreboard players set @s D_diamond_ore_cnt 0
scoreboard players set @s D_emerald_ore_cnt 0

scoreboard players add @s speedxp 1

##symbol
execute as @s[scores={AngelStoneFlag=1},predicate = mikatanserver:chance/0.001] at @s run function mikatanserver:main/drap_stone/angel_stone
execute as @s[scores={ImaginStoneFlag=1},predicate = mikatanserver:chance/0.001] at @s run function mikatanserver:main/drap_stone/imagin_stone
execute as @s[scores={GoldenEggFlag=1},predicate = mikatanserver:chance/0.0007] at @s run function mikatanserver:main/drap_stone/golden_stone
execute as @s[scores={SpiritMassFlag=1},predicate = mikatanserver:chance/0.0005] at @s run function mikatanserver:main/drap_stone/spirit_mass
##accessories経験値
execute as @s[nbt={Inventory:[{"Slot":9b,id:"minecraft:magma_cream",tag:{CustomModelData:1}}]},predicate=mikatanserver:chance/0.05] run scoreboard players add @s speedxp 1
execute as @s[nbt={Inventory:[{"Slot":9b,id:"minecraft:magma_cream",tag:{CustomModelData:2}}]},predicate=mikatanserver:chance/0.10] run scoreboard players add @s speedxp 1
execute as @s[nbt={Inventory:[{"Slot":9b,id:"minecraft:magma_cream",tag:{CustomModelData:3}}]},predicate=mikatanserver:chance/0.20] run scoreboard players add @s speedxp 1
execute as @s[nbt={Inventory:[{"Slot":9b,id:"minecraft:magma_cream",tag:{CustomModelData:19}}]},predicate=mikatanserver:chance/0.30] run scoreboard players add @s speedxp 1
execute as @s[nbt={Inventory:[{"Slot":10b,id:"minecraft:magma_cream",tag:{CustomModelData:37}}]},predicate=mikatanserver:chance/0.20] run scoreboard players add @s speedxp 1
execute as @s[nbt={Inventory:[{"Slot":102b,id:"minecraft:leather_chestplate",tag:{obsidian_chestplate:1b}},{id:"minecraft:obsidian",Count:64b}]},predicate=mikatanserver:chance/0.1] run scoreboard players add @s speedxp 1

##石を掘ったときレア泥
execute as @s[predicate=mikatanserver:chance/0.000002] run function mikatanserver:main/lvup/raredrop/speed

execute as @s[scores={speed-Lv=..199}] run execute if score @s speedxp >= @s needspeedxp run function mikatanserver:main/lvup/xpcount/speedlvup