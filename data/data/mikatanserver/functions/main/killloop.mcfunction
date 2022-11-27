##mikatanserver:judge/kill の実績により実行
##エクスペリエンス
execute if entity @s[nbt={SelectedItem:{tag:{en_experience:[1]}}}] unless predicate mikatanserver:overworld run function mikatanserver:item/enchant/experience/en_experience3
execute if entity @s[nbt={SelectedItem:{tag:{en_experience:[2]}}}] unless predicate mikatanserver:overworld run function mikatanserver:item/enchant/experience/en_experience6
execute if entity @s[nbt={SelectedItem:{tag:{en_experience:[3]}}}] unless predicate mikatanserver:overworld run function mikatanserver:item/enchant/experience/en_experience9
execute if entity @s[nbt={SelectedItem:{tag:{en_experience:[4]}}}] unless predicate mikatanserver:overworld run function mikatanserver:item/enchant/experience/en_experience12
execute if entity @s[nbt={SelectedItem:{tag:{en_experience:[5]}}}] unless predicate mikatanserver:overworld run function mikatanserver:item/enchant/experience/en_experience15

advancement revoke @s only mikatanserver:judge/kill