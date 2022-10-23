#~クラフトレシピ~
execute as @p if entity @s[level=40..] as @e[type=minecraft:item_frame,tag=My_enchanter,nbt={ItemRotation:1b,Item:{id:"minecraft:lapis_block",tag:{Tags:["My_enchanter"]}}}] if block ~ ~ ~ dropper[facing=up]{Items:[{Slot: 0b, id: "minecraft:slime_ball", tag: {CustomModelData: 3}}, {Slot: 1b, id: "minecraft:slime_ball", tag: {CustomModelData: 3}}, {Slot: 2b, id: "minecraft:lapis_lazuli"}, {Slot: 3b, id: "minecraft:slime_ball", tag: {CustomModelData: 3}}, {Slot: 4b}, {Slot: 5b, id: "minecraft:slime_ball", tag: {CustomModelData: 3}}, {Slot: 6b, id: "minecraft:lapis_lazuli"}, {Slot: 7b, id: "minecraft:slime_ball", tag: {CustomModelData: 3}}, {Slot: 8b, id: "minecraft:slime_ball", tag: {CustomModelData: 3}}]} unless data block ~ ~ ~ Items[4].tag.Enchantments unless data block ~ ~ ~ Items[4].tag.StoredEnchantments run function oriench:craft/40lv/enchant

execute as @p if entity @s[level=60..] as @e[type=minecraft:item_frame,tag=My_enchanter,nbt={ItemRotation:1b,Item:{id:"minecraft:lapis_block",tag:{Tags:["My_enchanter"]}}}] if block ~ ~ ~ dropper[facing=up]{Items:[{Slot: 0b, id: "minecraft:slime_ball", tag: {CustomModelData: 5}}, {Slot: 1b, id: "minecraft:lapis_lazuli"}, {Slot: 2b, id: "minecraft:lapis_lazuli"}, {Slot: 3b, id: "minecraft:lapis_lazuli"}, {Slot: 4b}, {Slot: 5b, id: "minecraft:lapis_lazuli"}, {Slot: 6b, id: "minecraft:lapis_lazuli"}, {Slot: 7b, id: "minecraft:lapis_lazuli"}, {Slot: 8b, id: "minecraft:slime_ball", tag: {CustomModelData: 5}}]} unless data block ~ ~ ~ Items[4].tag.Enchantments unless data block ~ ~ ~ Items[4].tag.StoredEnchantments run function oriench:craft/60lv/enchant

execute as @p if entity @s[level=5..] as @e[type=minecraft:item_frame,tag=My_enchanter,nbt={ItemRotation:1b,Item:{id:"minecraft:lapis_block",tag:{Tags:["My_enchanter"]}}}] if block ~ ~ ~ dropper[facing=up]{Items:[{Slot: 0b, id: "minecraft:slime_ball", tag: {CustomModelData: 4}}, {Slot: 1b, id: "minecraft:lapis_lazuli"}, {Slot: 2b, id: "minecraft:lapis_lazuli"}, {Slot: 3b, id: "minecraft:slime_ball", tag: {CustomModelData: 4}}, {Slot: 4b}, {Slot: 5b, id: "minecraft:slime_ball", tag: {CustomModelData: 4}}, {Slot: 6b, id: "minecraft:lapis_lazuli"}, {Slot: 7b, id: "minecraft:lapis_lazuli"}, {Slot: 8b, id: "minecraft:slime_ball", tag: {CustomModelData: 4}}]} unless data block ~ ~ ~ Items[4].tag.Enchantments unless data block ~ ~ ~ Items[4].tag.StoredEnchantments run function oriench:craft/5lv/enchant

execute as @p if entity @s[level=15..] as @e[type=minecraft:item_frame,tag=My_enchanter,nbt={ItemRotation:1b,Item:{id:"minecraft:lapis_block",tag:{Tags:["My_enchanter"]}}}] if block ~ ~ ~ dropper[facing=up]{Items:[{Slot: 0b, id: "minecraft:purple_stained_glass", tag: {island_item: 1b}}, {Slot: 1b, id: "minecraft:amethyst_shard", tag: {island_item: 1b}}, {Slot: 2b, id: "minecraft:diamond_ore"}, {Slot: 3b, id: "minecraft:oak_wood", tag: {island_item: 1b}}, {Slot: 4b}, {Slot: 5b, id: "minecraft:oak_wood", tag: {island_item: 1b}}, {Slot: 6b, id: "minecraft:deepslate_diamond_ore"}, {Slot: 7b, id: "minecraft:amethyst_shard", tag: {island_item: 1b}}, {Slot: 8b, id: "minecraft:purple_stained_glass", tag: {island_item: 1b}}]} unless data block ~ ~ ~ Items[4].tag.Enchantments unless data block ~ ~ ~ Items[4].tag.StoredEnchantments run function oriench:craft/15lv/enchant

execute as @p if entity @s[level=10..] as @e[type=minecraft:item_frame,tag=My_enchanter,nbt={ItemRotation:1b,Item:{id:"minecraft:lapis_block",tag:{Tags:["My_enchanter"]}}}] if block ~ ~ ~ dropper[facing=up]{Items:[{Slot: 0b, id: "minecraft:lapis_lazuli"}, {Slot: 1b, id: "minecraft:amethyst_shard", tag: {island_item: 1b}}, {Slot: 2b, id: "minecraft:diamond_ore"}, {Slot: 3b, id: "minecraft:oak_wood", tag: {island_item: 1b}}, {Slot: 4b, Count:1b}, {Slot: 5b, id: "minecraft:oak_wood", tag: {island_item: 1b}}, {Slot: 6b, id: "minecraft:deepslate_diamond_ore"}, {Slot: 7b, id: "minecraft:amethyst_shard", tag: {island_item: 1b}}, {Slot: 8b, id: "minecraft:slime_ball", tag: {CustomModelData: 6}}]} unless data block ~ ~ ~ Items[4].tag.Enchantments unless data block ~ ~ ~ Items[4].tag.StoredEnchantments run function oriench:craft/10lv/enchant

execute as @p if entity @s[level=3..] as @e[type=minecraft:item_frame,tag=My_enchanter,nbt={ItemRotation:1b,Item:{id:"minecraft:lapis_block",tag:{Tags:["My_enchanter"]}}}] if block ~ ~ ~ dropper[facing=up]{Items:[{Slot: 0b, id: "minecraft:slime_ball", tag: {CustomModelData: 18}}, {Slot: 1b, id: "minecraft:nautilus_shell", tag: {CustomModelData: 17}}, {Slot: 2b, id: "minecraft:nautilus_shell", tag: {CustomModelData: 17}}, {Slot: 3b, id: "minecraft:nautilus_shell", tag: {CustomModelData: 17}}, {Slot: 4b}, {Slot: 5b, id: "minecraft:nautilus_shell", tag: {CustomModelData: 17}}, {Slot: 6b, id: "minecraft:nautilus_shell", tag: {CustomModelData: 17}}, {Slot: 7b, id: "minecraft:nautilus_shell", tag: {CustomModelData: 17}}, {Slot: 8b, id: "minecraft:slime_ball", tag: {CustomModelData: 18}}]} unless data block ~ ~ ~ Items[4].tag.Enchantments unless data block ~ ~ ~ Items[4].tag.StoredEnchantments run function oriench:craft/3lv/enchant



execute if block ~ ~ ~ dropper[facing=up]{Items:[{Slot: 0b, id: "minecraft:slime_ball", tag: {CustomModelData: 25}}, {Slot: 1b, id: "minecraft:player_head", tag: {SkullOwner: {Id: [I; -766967091, -1546499956, -1724235543, 187402964]}}}, {Slot: 2b, id: "minecraft:slime_ball", tag: {CustomModelData: 25}}, {Slot: 3b, id: "minecraft:player_head", tag: {SkullOwner: {Id: [I; -766967091, -1546499956, -1724235543, 187402964]}}}, {Slot: 5b, id: "minecraft:nautilus_shell", tag: {CustomModelData: 15}}, {Slot: 6b, id: "minecraft:slime_ball", tag: {CustomModelData: 25}}, {Slot: 7b, id: "minecraft:nautilus_shell", tag: {CustomModelData: 15}}, {Slot: 8b, id: "minecraft:slime_ball", tag: {CustomModelData: 25}}]} unless data block ~ ~ ~ Items[4].tag.Enchantments unless data block ~ ~ ~ Items[4].tag.StoredEnchantments run function oriench:craft/0lv/enchant
# execute if block ~ ~ ~ dropper[facing=up]{Items:[RECIPE]} run function oriench:craft/
# execute if block ~ ~ ~ dropper[facing=up]{Items:[RECIPE]} run function oriench:craft/
# execute if block ~ ~ ~ dropper[facing=up]{Items:[RECIPE]} run function oriench:craft/

#サウンド＆パーティクル
playsound minecraft:block.smithing_table.use master @p

#回転したアイテムを元に戻す
data merge entity @s {ItemRotation:0b}