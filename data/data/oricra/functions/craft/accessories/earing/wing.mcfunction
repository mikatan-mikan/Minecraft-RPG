#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:magma_cream{display:{Name:'[{"text": "wing earing","color":"green"}]',Lore:['[{"text":"このアイテムをインベントリの左上にセットすると30%の確率で取引のxpが+1される"}]']},CustomModelData:69} 1

#進捗
advancement grant @p only mikatanserver:customcrafter/accessories/earing/wing