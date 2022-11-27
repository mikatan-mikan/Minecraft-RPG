execute if entity @s[nbt={SelectedItem:{tag:{SmeltingLv:[1]}}},predicate=mikatanserver:chance/0.2] run function mikatanserver:item/enchant/smelting/main
execute if entity @s[nbt={SelectedItem:{tag:{SmeltingLv:[2]}}},predicate=mikatanserver:chance/0.4] run function mikatanserver:item/enchant/smelting/main
execute if entity @s[nbt={SelectedItem:{tag:{SmeltingLv:[3]}}},predicate=mikatanserver:chance/0.6] run function mikatanserver:item/enchant/smelting/main
execute if entity @s[nbt={SelectedItem:{tag:{SmeltingLv:[4]}}},predicate=mikatanserver:chance/0.8] run function mikatanserver:item/enchant/smelting/main
execute if entity @s[nbt={SelectedItem:{tag:{SmeltingLv:[5]}}},predicate=mikatanserver:chance/1] run function mikatanserver:item/enchant/smelting/main

execute as @s[nbt={Inventory:[{"Slot":9b,tag:{CustomModelData:57}}]},predicate=mikatanserver:chance/0.05] run experience add @s 1 points