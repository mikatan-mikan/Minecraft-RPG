#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:magma_cream{display:{Name:'[{"text": "jade brooch","color":"green"}]',Lore:['[{"text":"このアイテムをインベントリの左上から一つ横にセットすると20%の確率で採掘時のxpが+1されるになる"}]']},CustomModelData:37} 1

#進捗
advancement grant @p only mikatanserver:customcrafter/accessories/brooch/jade
advancement grant @p only mikatanserver:customcrafter/tool/jadecraft