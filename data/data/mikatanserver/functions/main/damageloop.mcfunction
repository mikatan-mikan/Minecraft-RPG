##mikatanserver:judge/attack の実績により実行


function mikatanserver:main/carrotstick/damage
##エンダースレイヤー
execute if entity @s[nbt={SelectedItem:{tag:{enderslayer:[1]}}}] run function mikatanserver:item/enchant/enderslayer
execute if entity @s[nbt={SelectedItem:{tag:{enderslayer:[2]}}}] run function mikatanserver:item/enchant/enderslayer
execute if entity @s[nbt={SelectedItem:{tag:{enderslayer:[3]}}}] run function mikatanserver:item/enchant/enderslayer
execute if entity @s[nbt={SelectedItem:{tag:{enderslayer:[4]}}}] run function mikatanserver:item/enchant/enderslayer
execute if entity @s[nbt={SelectedItem:{tag:{enderslayer:[5]}}}] run function mikatanserver:item/enchant/enderslayer
##キュービズム
execute if entity @s[nbt={SelectedItem:{tag:{cubism:[1]}}}] run function mikatanserver:item/enchant/cubism/main
execute if entity @s[nbt={SelectedItem:{tag:{cubism:[2]}}}] run function mikatanserver:item/enchant/cubism/main
execute if entity @s[nbt={SelectedItem:{tag:{cubism:[3]}}}] run function mikatanserver:item/enchant/cubism/main
execute if entity @s[nbt={SelectedItem:{tag:{cubism:[4]}}}] run function mikatanserver:item/enchant/cubism/main
execute if entity @s[nbt={SelectedItem:{tag:{cubism:[5]}}}] run function mikatanserver:item/enchant/cubism/main
##ライフスティール
execute if entity @s[nbt={SelectedItem:{tag:{lifesteal:[1]}}},predicate=mikatanserver:chance/0.005] run function mikatanserver:item/enchant/lifesteal/main
execute if entity @s[nbt={SelectedItem:{tag:{lifesteal:[2]}}},predicate=mikatanserver:chance/0.01] run function mikatanserver:item/enchant/lifesteal/main
execute if entity @s[nbt={SelectedItem:{tag:{lifesteal:[3]}}},predicate=mikatanserver:chance/0.015] run function mikatanserver:item/enchant/lifesteal/main
execute if entity @s[nbt={SelectedItem:{tag:{lifesteal:[4]}}},predicate=mikatanserver:chance/0.02] run function mikatanserver:item/enchant/lifesteal/main
execute if entity @s[nbt={SelectedItem:{tag:{lifesteal:[5]}}},predicate=mikatanserver:chance/0.025] run function mikatanserver:item/enchant/lifesteal/main
##ruins armor
execute if entity @s[nbt={Inventory:[{"Slot":100b,tag:{armor_ruins:true}},{"Slot":101b,tag:{armor_ruins:true}},{"Slot":102b,tag:{armor_ruins:true}},{"Slot":103b,tag:{armor_ruins:true}}]}] run effect give @s resistance 1 0
##icesword(破壊)
execute as @s[nbt={SelectedItem:{tag:{ice:[1]}}}] at @s run function mikatanserver:item/tool/sword
##giantkillar
execute if entity @s[nbt={SelectedItem:{tag:{giantkillar:[1]}}}] run function mikatanserver:item/enchant/giantkillar/main
execute if entity @s[nbt={SelectedItem:{tag:{giantkillar:[2]}}}] run function mikatanserver:item/enchant/giantkillar/main
execute if entity @s[nbt={SelectedItem:{tag:{giantkillar:[3]}}}] run function mikatanserver:item/enchant/giantkillar/main
##batch
execute as @s[nbt={Inventory:[{"Slot":11b,id:"minecraft:magma_cream",tag:{CustomModelData:30}}]}] run effect give @s regeneration 3 0 true
execute as @s[nbt={Inventory:[{"Slot":11b,id:"minecraft:magma_cream",tag:{CustomModelData:39}}]}] run effect give @s speed 1 0 true
execute if score @s manamax > @s mana unless score @s ManaBatchBool matches 1 if predicate mikatanserver:chance/0.40 if entity @s[nbt={Inventory:[{"Slot":11b,id:"minecraft:magma_cream",tag:{CustomModelData:43,tier:1}}]}] run scoreboard players add @s mana 1
execute if score @s manamax > @s mana unless score @s ManaBatchBool matches 1 if predicate mikatanserver:chance/0.70 if entity @s[nbt={Inventory:[{"Slot":11b,id:"minecraft:magma_cream",tag:{CustomModelData:43,tier:2}}]}] run scoreboard players add @s mana 1
execute if score @s manamax > @s mana unless score @s ManaBatchBool matches 1 if entity @s[nbt={Inventory:[{"Slot":11b,id:"minecraft:magma_cream",tag:{tier:1}}]}] if predicate mikatanserver:chance/0.20 run scoreboard players add @s mana 1
execute if score @s manamax > @s mana unless score @s ManaBatchBool matches 1 if score @s PlayerStatMusic matches 1 if entity @s[nbt={Inventory:[{"Slot":11b,id:"minecraft:magma_cream",tag:{tier:1}}]}] if predicate mikatanserver:chance/0.40 run scoreboard players add @s mana 1
execute if score @s manamax > @s mana unless score @s ManaBatchBool matches 1 if score @s PlayerStatMusic matches 2 if entity @s[nbt={Inventory:[{"Slot":11b,id:"minecraft:magma_cream",tag:{tier:1}}]}] if predicate mikatanserver:chance/0.60 run scoreboard players add @s mana 1
execute if score @s manamax > @s mana unless score @s ManaBatchBool matches 1 if score @s PlayerStatMusic matches 3 if entity @s[nbt={Inventory:[{"Slot":11b,id:"minecraft:magma_cream",tag:{tier:1}}]}] if predicate mikatanserver:chance/0.80 run scoreboard players add @s mana 1
execute if score @s manamax > @s mana unless score @s ManaBatchBool matches 1 if score @s PlayerStatMusic matches 4 if entity @s[nbt={Inventory:[{"Slot":11b,id:"minecraft:magma_cream",tag:{CustomModelData:43,tier:3}}]}] run scoreboard players add @s mana 1
scoreboard players set @s ManaBatchBool 1
execute as @s[nbt={Inventory:[{"Slot":11b,id:"minecraft:magma_cream",tag:{CustomModelData:51,tier:2}}]}] run effect clear @s jump_boost
execute as @s[nbt={Inventory:[{"Slot":11b,id:"minecraft:magma_cream",tag:{CustomModelData:51}}]}] run effect give @s jump_boost 1 0 true