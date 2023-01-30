#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:magma_cream{display:{Name:'[{"text": "holy brooch","color":"white"}]',Lore:['[{"text":"このアイテムをインベントリの左上にセットすると40%の確率で採掘時のxpが+1される"}]']},CustomModelData:74} 1

#進捗
advancement grant @p only mikatanserver:customcrafter/accessories/brooch/holy