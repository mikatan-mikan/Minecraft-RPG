
##属性
execute as @s[nbt={SelectedItem:{tag:{Enhance_Num:1}}}] if data entity @s SelectedItem.tag.CustomModelData at @s run function mikatanserver:item/_attribute/fire/check
execute as @s[nbt={SelectedItem:{tag:{Enhance_Num:2}}}] if data entity @s SelectedItem.tag.CustomModelData at @s run function mikatanserver:item/_attribute/wind/check
execute as @s[nbt={SelectedItem:{tag:{Enhance_Num:3}}}] if data entity @s SelectedItem.tag.CustomModelData at @s run function mikatanserver:item/_attribute/ice/check
execute as @s[nbt={SelectedItem:{tag:{Enhance_Num:4}}}] if data entity @s SelectedItem.tag.CustomModelData at @s run function mikatanserver:item/_attribute/light/check
execute as @s[nbt={SelectedItem:{tag:{Enhance_Num:5}}}] if data entity @s SelectedItem.tag.CustomModelData at @s run function mikatanserver:item/_attribute/dark/check
execute as @s[nbt={SelectedItem:{tag:{Enhance_Num:101}}}] if data entity @s SelectedItem.tag.CustomModelData at @s run function mikatanserver:item/_attribute/tier_2/flame/check