execute if entity @s[nbt={Item:{id:"minecraft:cobblestone"}}] run data merge storage mikatanserver:smelt_item {Item_id:"minecraft:stone"}
execute if entity @s[nbt={Item:{id:"minecraft:cobblestone"}}] run data modify entity @s Item.id set from storage mikatanserver:smelt_item Item_id

execute if entity @s[nbt={Item:{id:"minecraft:stone"}}] run data merge storage mikatanserver:smelt_item {Item_id:"minecraft:smooth_stone"}
execute if entity @s[nbt={Item:{id:"minecraft:stone"}}] run data modify entity @s Item.id set from storage mikatanserver:smelt_item Item_id

execute if entity @s[nbt={Item:{id:"minecraft:coal_ore"}}] run data merge storage mikatanserver:smelt_item {Item_id:"minecraft:coal"}
execute if entity @s[nbt={Item:{id:"minecraft:coal_ore"}}] run data modify entity @s Item.id set from storage mikatanserver:smelt_item Item_id
execute if entity @s[nbt={Item:{id:"minecraft:iron_ore"}}] run data merge storage mikatanserver:smelt_item {Item_id:"minecraft:iron_ingot"}
execute if entity @s[nbt={Item:{id:"minecraft:iron_ore"}}] run data modify entity @s Item.id set from storage mikatanserver:smelt_item Item_id
execute if entity @s[nbt={Item:{id:"minecraft:gold_ore"}}] run data merge storage mikatanserver:smelt_item {Item_id:"minecraft:gold_ingot"}
execute if entity @s[nbt={Item:{id:"minecraft:gold_ore"}}] run data modify entity @s Item.id set from storage mikatanserver:smelt_item Item_id
execute if entity @s[nbt={Item:{id:"minecraft:lapis_ore"}}] run data merge storage mikatanserver:smelt_item {Item_id:"minecraft:lapis_lazuli"}
execute if entity @s[nbt={Item:{id:"minecraft:lapis_ore"}}] run data modify entity @s Item.id set from storage mikatanserver:smelt_item Item_id
execute if entity @s[nbt={Item:{id:"minecraft:redstone_ore"}}] run data merge storage mikatanserver:smelt_item {Item_id:"minecraft:red_stone"}
execute if entity @s[nbt={Item:{id:"minecraft:redstone_ore"}}] run data modify entity @s Item.id set from storage mikatanserver:smelt_item Item_id
execute if entity @s[nbt={Item:{id:"minecraft:emerald_ore"}}] run data merge storage mikatanserver:smelt_item {Item_id:"minecraft:emerald"}
execute if entity @s[nbt={Item:{id:"minecraft:emerald_ore"}}] run data modify entity @s Item.id set from storage mikatanserver:smelt_item Item_id
execute if entity @s[nbt={Item:{id:"minecraft:diamond_ore"}}] run data merge storage mikatanserver:smelt_item {Item_id:"minecraft:diamond"}
execute if entity @s[nbt={Item:{id:"minecraft:diamond_ore"}}] run data modify entity @s Item.id set from storage mikatanserver:smelt_item Item_id

execute if entity @s[nbt={Item:{id:"minecraft:deepslate_coal_ore"}}] run data merge storage mikatanserver:smelt_item {Item_id:"minecraft:coal"}
execute if entity @s[nbt={Item:{id:"minecraft:deepslate_coal_ore"}}] run data modify entity @s Item.id set from storage mikatanserver:smelt_item Item_id
execute if entity @s[nbt={Item:{id:"minecraft:deepslate_iron_ore"}}] run data merge storage mikatanserver:smelt_item {Item_id:"minecraft:iron_ingot"}
execute if entity @s[nbt={Item:{id:"minecraft:deepslate_iron_ore"}}] run data modify entity @s Item.id set from storage mikatanserver:smelt_item Item_id
execute if entity @s[nbt={Item:{id:"minecraft:deepslate_gold_ore"}}] run data merge storage mikatanserver:smelt_item {Item_id:"minecraft:gold_ingot"}
execute if entity @s[nbt={Item:{id:"minecraft:deepslate_gold_ore"}}] run data modify entity @s Item.id set from storage mikatanserver:smelt_item Item_id
execute if entity @s[nbt={Item:{id:"minecraft:deepslate_lapis_ore"}}] run data merge storage mikatanserver:smelt_item {Item_id:"minecraft:lapis_lazuli"}
execute if entity @s[nbt={Item:{id:"minecraft:deepslate_lapis_ore"}}] run data modify entity @s Item.id set from storage mikatanserver:smelt_item Item_id
execute if entity @s[nbt={Item:{id:"minecraft:deepslate_redstone_ore"}}] run data merge storage mikatanserver:smelt_item {Item_id:"minecraft:red_stone"}
execute if entity @s[nbt={Item:{id:"minecraft:deepslate_redstone_ore"}}] run data modify entity @s Item.id set from storage mikatanserver:smelt_item Item_id
execute if entity @s[nbt={Item:{id:"minecraft:deepslate_emerald_ore"}}] run data merge storage mikatanserver:smelt_item {Item_id:"minecraft:emerald"}
execute if entity @s[nbt={Item:{id:"minecraft:deepslate_emerald_ore"}}] run data modify entity @s Item.id set from storage mikatanserver:smelt_item Item_id
execute if entity @s[nbt={Item:{id:"minecraft:deepslate_diamond_ore"}}] run data merge storage mikatanserver:smelt_item {Item_id:"minecraft:diamond"}
execute if entity @s[nbt={Item:{id:"minecraft:deepslate_diamond_ore"}}] run data modify entity @s Item.id set from storage mikatanserver:smelt_item Item_id


execute if entity @s[nbt={Item:{id:"minecraft:raw_iron"}}] run data merge storage mikatanserver:smelt_item {Item_id:"minecraft:iron_ingot"}
execute if entity @s[nbt={Item:{id:"minecraft:raw_iron"}}] run data modify entity @s Item.id set from storage mikatanserver:smelt_item Item_id
execute if entity @s[nbt={Item:{id:"minecraft:raw_gold"}}] run data merge storage mikatanserver:smelt_item {Item_id:"minecraft:gold_ingot"}
execute if entity @s[nbt={Item:{id:"minecraft:raw_gold"}}] run data modify entity @s Item.id set from storage mikatanserver:smelt_item Item_id