#~クラフトレシピ~
execute if entity @p[level=40..] if block ~ ~ ~ dropper[facing=up]{Items:[{Slot: 0b, id: "minecraft:slime_ball", tag: {CustomModelData: 3}}, {Slot: 1b, id: "minecraft:slime_ball", tag: {CustomModelData: 3}}, {Slot: 2b, id: "minecraft:lapis_lazuli"}, {Slot: 3b, id: "minecraft:slime_ball", tag: {CustomModelData: 3}}, {Slot: 4b, Count: 1b}, {Slot: 5b, id: "minecraft:slime_ball", tag: {CustomModelData: 3}}, {Slot: 6b, id: "minecraft:lapis_lazuli"}, {Slot: 7b, id: "minecraft:slime_ball", tag: {CustomModelData: 3}}, {Slot: 8b, id: "minecraft:slime_ball", tag: {CustomModelData: 3}}]} run function oriench:craft/40lv/enchant

execute if entity @p[level=60..] if block ~ ~ ~ dropper[facing=up]{Items:[{Slot: 0b, id: "minecraft:slime_ball", tag: {CustomModelData: 5}}, {Slot: 1b, id: "minecraft:lapis_lazuli"}, {Slot: 2b, id: "minecraft:lapis_lazuli"}, {Slot: 3b, id: "minecraft:lapis_lazuli"}, {Slot: 4b, Count: 1b}, {Slot: 5b, id: "minecraft:lapis_lazuli"}, {Slot: 6b, id: "minecraft:lapis_lazuli"}, {Slot: 7b, id: "minecraft:lapis_lazuli"}, {Slot: 8b, id: "minecraft:slime_ball", tag: {CustomModelData: 5}}]} unless data block ~ ~ ~ Items[4].tag.Enchantments unless data block ~ ~ ~ Items[4].tag.StoredEnchantments run function oriench:craft/60lv/enchant

# execute if block ~ ~ ~ dropper[facing=up]{Items:[RECIPE]} run function oriench:craft/
# execute if block ~ ~ ~ dropper[facing=up]{Items:[RECIPE]} run function oriench:craft/
# execute if block ~ ~ ~ dropper[facing=up]{Items:[RECIPE]} run function oriench:craft/
# execute if block ~ ~ ~ dropper[facing=up]{Items:[RECIPE]} run function oriench:craft/

#サウンド＆パーティクル
playsound minecraft:block.smithing_table.use master @p

#回転したアイテムを元に戻す
data merge entity @s {ItemRotation:0b}