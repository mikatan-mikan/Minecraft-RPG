scoreboard players set @s manatimer 0

execute if entity @e[nbt={Inventory:[{"Slot":100b,tag:{calser_ar:1b}},{"Slot":101b,tag:{calser_ar:1b}},{"Slot":102b,tag:{calser_ar:1b}},{"Slot":103b,tag:{calser_ar:1b}}]}] run effect give @s jump_boost 1 0

scoreboard players add @s mana 1


execute if score @s manamax > @s mana if entity @s[nbt={Inventory:[{"Slot":9b,id:"minecraft:magma_cream",tag:{CustomModelData:22}}]},predicate=mikatanserver:chance/0.15] run scoreboard players add @s mana 1
execute if score @s manamax > @s mana if entity @s[nbt={Inventory:[{"Slot":9b,id:"minecraft:magma_cream",tag:{CustomModelData:23}}]},predicate=mikatanserver:chance/0.30] run scoreboard players add @s mana 1
execute if score @s manamax > @s mana if entity @s[nbt={Inventory:[{"Slot":9b,id:"minecraft:magma_cream",tag:{CustomModelData:24}}]},predicate=mikatanserver:chance/0.40] run scoreboard players add @s mana 1
execute if score @s manamax > @s mana if entity @s[nbt={Inventory:[{"Slot":10b,id:"minecraft:magma_cream",tag:{CustomModelData:29}}]},predicate=mikatanserver:chance/0.20] run scoreboard players add @s mana 1
execute if score @s manamax > @s mana if entity @s[nbt={Inventory:[{"Slot":10b,id:"minecraft:magma_cream",tag:{CustomModelData:75}}]},predicate=mikatanserver:chance/0.30] run scoreboard players add @s mana 1
execute if score @s manamax > @s mana if entity @s[nbt={Inventory:[{"Slot":9b,id:"minecraft:magma_cream",tag:{CustomModelData:33}}]},predicate=mikatanserver:chance/0.40] run scoreboard players add @s mana 1
execute if score @s manamax > @s mana if entity @s[nbt={Inventory:[{"Slot":9b,id:"minecraft:magma_cream",tag:{CustomModelData:49}}]},predicate=mikatanserver:chance/0.50] run scoreboard players add @s mana 1
execute if score @s manamax > @s mana if entity @s[nbt={Inventory:[{"Slot":9b,id:"minecraft:magma_cream",tag:{CustomModelData:50,holy:0b}}]},predicate=mikatanserver:chance/0.60] run scoreboard players add @s mana 1
execute if score @s manamax > @s mana if entity @s[nbt={Inventory:[{"Slot":9b,id:"minecraft:magma_cream",tag:{CustomModelData:50,holy:1b}}]},predicate=mikatanserver:chance/0.70] run scoreboard players add @s mana 1
execute if score @s manamax > @s mana if entity @s[nbt={Inventory:[{"Slot":10b,id:"minecraft:magma_cream",tag:{CustomModelData:56}}]},predicate=mikatanserver:chance/0.40] run scoreboard players add @s mana 1
execute if score @s manamax > @s mana if entity @s[nbt={Inventory:[{"Slot":10b,id:"minecraft:magma_cream",tag:{CustomModelData:32}}]},predicate=mikatanserver:chance/0.20,scores={DungeonClear_Num=10..}] run scoreboard players add @s mana 5



execute if score @s manamax < @s mana store result score @s mana run scoreboard players get @s manamax