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
##icesword(破壊)
execute as @s[nbt={SelectedItem:{tag:{ice:[1]}}}] at @s run function mikatanserver:item/tool/sword
##giantkillar
execute if entity @s[nbt={SelectedItem:{tag:{giantkillar:[1]}}}] run function mikatanserver:item/enchant/giantkillar/main
execute if entity @s[nbt={SelectedItem:{tag:{giantkillar:[2]}}}] run function mikatanserver:item/enchant/giantkillar/main
execute if entity @s[nbt={SelectedItem:{tag:{giantkillar:[3]}}}] run function mikatanserver:item/enchant/giantkillar/main
##regeneration batch
execute as @s[nbt={Inventory:[{"Slot":11b,id:"minecraft:magma_cream",tag:{CustomModelData:30}}]}] run effect give @s regeneration 3 0 true