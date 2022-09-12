#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:magma_cream{display:{Name:'[{"text": "diamond ring","color":"aqua"}]',Lore:['[{"text":"このアイテムをインベントリの左上にセットすると20%の確率で木こり時のxpが倍になる"}]']},CustomModelData:6} 1

#進捗
advancement grant @p only mikatanserver:customcrafter/accessories/ring/diamond