#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:magma_cream{display:{Name:'[{"text": "super hat","color":"yellow"}]',Lore:['[{"text":"このアイテムをインベントリの左上にセットすると20%の確率で農業のxpが+1になる"}]']},CustomModelData:52} 1

#進捗
advancement grant @p only mikatanserver:customcrafter/accessories/hat/super