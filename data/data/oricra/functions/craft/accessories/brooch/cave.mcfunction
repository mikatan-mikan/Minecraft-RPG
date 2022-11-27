#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:magma_cream{display:{Name:'[{"text": "cave brooch","color":"aqua"}]',Lore:['[{"text":"このアイテムをインベントリの左上にセットするとsmelting発動時に一定確率で経験値を得る"}]']},CustomModelData:57} 1

#進捗
advancement grant @p only mikatanserver:customcrafter/accessories/brooch/cave