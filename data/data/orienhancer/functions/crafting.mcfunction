#~クラフトレシピ~
execute if block ~ ~ ~ dropper[facing=up]{Items:[{Slot: 0b, id: "minecraft:nautilus_shell", tag: {CustomModelData: 23, Enchantments: [{lvl: 1s, id: "minecraft:unbreaking"}]}}, {Slot: 1b, id: "minecraft:slime_ball", tag: {CustomModelData: 23, HideFlags: 1, Enchantments: [{lvl: 1s, id: "minecraft:unbreaking"}]}}, {Slot: 2b, id: "minecraft:slime_ball", tag: {CustomModelData: 24, HideFlags: 1, Enchantments: [{lvl: 1s, id: "minecraft:unbreaking"}]}}, {Slot: 3b, id: "minecraft:slime_ball", tag: {CustomModelData: 23, HideFlags: 1, Enchantments: [{lvl: 1s, id: "minecraft:unbreaking"}]}},{Slot:4b,Count:1b,id:"minecraft:carrot_on_a_stick"}, {Slot: 5b, id: "minecraft:slime_ball", tag: {CustomModelData: 23, HideFlags: 1, Enchantments: [{lvl: 1s, id: "minecraft:unbreaking"}]}}, {Slot: 6b, id: "minecraft:nautilus_shell", tag: {CustomModelData: 24, HideFlags: 1, Enchantments: [{lvl: 1s, id: "minecraft:unbreaking"}]}}, {Slot: 7b, id: "minecraft:slime_ball", tag: {CustomModelData: 23, HideFlags: 1, Enchantments: [{lvl: 1s, id: "minecraft:unbreaking"}]}}, {Slot: 8b, id: "minecraft:nautilus_shell", tag: {CustomModelData: 23, Enchantments: [{lvl: 1s, id: "minecraft:unbreaking"}]}}]} run function orienhancer:craft/base/fire
# execute if block ~ ~ ~ dropper[facing=up]{Items:[RECIPE]} run function orienhancer:craft/
# execute if block ~ ~ ~ dropper[facing=up]{Items:[RECIPE]} run function orienhancer:craft/

#サウンド＆パーティクル
playsound minecraft:block.smithing_table.use master @p

#回転したアイテムを元に戻す
data merge entity @s {ItemRotation:0b}

item modify block ~ ~1 ~ container.4 