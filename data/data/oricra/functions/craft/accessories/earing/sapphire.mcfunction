#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:magma_cream{display:{Name:'[{"text": "sapphire earing","color":"blue"}]',Lore:['[{"text":"このアイテムをインベントリの左上にセットすると10%の確率で取引のxpが+1される"}]']},CustomModelData:8} 1

#進捗
advancement grant @p only mikatanserver:customcrafter/accessories/earing/sapphire