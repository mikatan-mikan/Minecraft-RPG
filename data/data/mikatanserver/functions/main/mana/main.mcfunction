scoreboard players set @s manatimer 0
scoreboard players add @s mana 1


execute if score @s manamax > @s mana if entity @s[nbt={Inventory:[{"Slot":9b,id:"minecraft:magma_cream",tag:{CustomModelData:22}}]},predicate=mikatanserver:chance/0.15] run scoreboard players add @s mana 1
execute if score @s manamax > @s mana if entity @s[nbt={Inventory:[{"Slot":9b,id:"minecraft:magma_cream",tag:{CustomModelData:23}}]},predicate=mikatanserver:chance/0.30] run scoreboard players add @s mana 1
execute if score @s manamax > @s mana if entity @s[nbt={Inventory:[{"Slot":9b,id:"minecraft:magma_cream",tag:{CustomModelData:24}}]},predicate=mikatanserver:chance/0.40] run scoreboard players add @s mana 1
execute if score @s manamax > @s mana if entity @s[nbt={Inventory:[{"Slot":10b,id:"minecraft:magma_cream",tag:{CustomModelData:29}}]},predicate=mikatanserver:chance/0.20] run scoreboard players add @s mana 1
execute if score @s manamax > @s mana if entity @s[nbt={Inventory:[{"Slot":10b,id:"minecraft:magma_cream",tag:{CustomModelData:32}}]},predicate=mikatanserver:chance/0.20,scores={DungeonClear_Num=10..}] run scoreboard players add @s mana 5

execute if score @s manamax < @s mana store result score @s mana run scoreboard players get @s manamax