#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:magma_cream{display:{Name:'[{"text": "sand earing","color":"yellow"}]',Lore:['[{"text":"このアイテムをインベントリの左上にセットすると50%の確率で取引のxpが+1される"}]']},CustomModelData:64} 1

#進捗
advancement grant @p only mikatanserver:customcrafter/accessories/earing/sand