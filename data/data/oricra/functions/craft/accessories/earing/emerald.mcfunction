#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:magma_cream{display:{Name:'[{"text": "emerald earing","color":"green"}]',Lore:['[{"text":"このアイテムをインベントリの左上にセットすると20%の確率で取引時のxpが+1される"}]']},CustomModelData:9} 1

#進捗
advancement grant @p only mikatanserver:customcrafter/accessories/earing/emerald