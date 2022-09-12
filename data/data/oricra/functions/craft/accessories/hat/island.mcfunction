#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:magma_cream{display:{Name:'[{"text": "island hat","color":"dark_purple"}]',Lore:['[{"text":"このアイテムをインベントリの右上にセットすると5%の確率で農業のxpが+1になる"}]']},CustomModelData:44} 1

#進捗
advancement grant @p only mikatanserver:customcrafter/accessories/hat/island