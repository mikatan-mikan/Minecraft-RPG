execute as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick"}}] unless entity @s[nbt={SelectedItem:{tag:{Enchantments:[{id:"minecraft:unbreaking"}]}}}] run function mikatanserver:main/carrotstick/damagemain
execute as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Enchantments:[{id:"minecraft:unbreaking",lvl:1s}]}}},predicate=mikatanserver:chance/0.50] run function mikatanserver:main/carrotstick/damagemain
execute as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Enchantments:[{id:"minecraft:unbreaking",lvl:2s}]}}},predicate=mikatanserver:chance/0.33] run function mikatanserver:main/carrotstick/damagemain
execute as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Enchantments:[{id:"minecraft:unbreaking",lvl:3s}]}}},predicate=mikatanserver:chance/0.25] run function mikatanserver:main/carrotstick/damagemain
execute as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Enchantments:[{id:"minecraft:unbreaking",lvl:4s}]}}},predicate=mikatanserver:chance/0.20] run function mikatanserver:main/carrotstick/damagemain
execute as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Enchantments:[{id:"minecraft:unbreaking",lvl:5s}]}}},predicate=mikatanserver:chance/0.167] run function mikatanserver:main/carrotstick/damagemain
execute as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Enchantments:[{id:"minecraft:unbreaking",lvl:6s}]}}},predicate=mikatanserver:chance/0.143] run function mikatanserver:main/carrotstick/damagemain
execute as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Enchantments:[{id:"minecraft:unbreaking",lvl:7s}]}}},predicate=mikatanserver:chance/0.125] run function mikatanserver:main/carrotstick/damagemain
execute as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Enchantments:[{id:"minecraft:unbreaking",lvl:8s}]}}},predicate=mikatanserver:chance/0.111] run function mikatanserver:main/carrotstick/damagemain
execute as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Enchantments:[{id:"minecraft:unbreaking",lvl:9s}]}}},predicate=mikatanserver:chance/0.10] run function mikatanserver:main/carrotstick/damagemain
execute as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Enchantments:[{id:"minecraft:unbreaking",lvl:10s}]}}},predicate=mikatanserver:chance/0.091] run function mikatanserver:main/carrotstick/damagemain
advancement revoke @s only mikatanserver:judge/attack