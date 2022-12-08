execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick"}},scores={ROD=1..}] unless data entity @s SelectedItem.tag.Season run function mikatanserver:item/itemmanamainloop
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick"}},scores={ROD=1..}] if entity @s[nbt={SelectedItem:{tag:{Season:3}}}] run function mikatanserver:item/itemmanamainloop
execute as @a[scores={ROD=1..}] run scoreboard players reset @s ROD
#execute as @a[nbt={{id:"minecraft:carrot_on_a_stick"}},scores={ROD=1..}] run