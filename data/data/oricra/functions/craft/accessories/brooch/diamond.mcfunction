#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:magma_cream{display:{Name:'[{"text": "diamond brooch","color":"aqua"}]',Lore:['[{"text":"このアイテムをインベントリの左上にセットすると5%の確率で採掘時のxpが+1される"}]']},CustomModelData:1} 1

#進捗
advancement grant @p only mikatanserver:customcrafter/accessories/brooch/diamond