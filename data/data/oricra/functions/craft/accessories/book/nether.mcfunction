#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:magma_cream{display:{Name:'[{"text": "ネザーの書物","color":"red"}]',Lore:['[{"text":"このアイテムをインベントリの左上のひとつ横にセットすると35%の確率でネザーエリアモブ討伐時のxpが倍になる"}]']},CustomModelData:62} 1

#進捗
advancement grant @p only mikatanserver:customcrafter/accessories/book/nether