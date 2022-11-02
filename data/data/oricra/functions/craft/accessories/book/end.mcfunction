#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:magma_cream{display:{Name:'[{"text": "エンドの書物","color":"dark_purple"}]',Lore:['[{"text":"このアイテムをインベントリの左上のひとつ横にセットすると35%の確率でエンドエリアモブ討伐時のxpが倍になる"}]']},CustomModelData:55} 1

#進捗
advancement grant @p only mikatanserver:customcrafter/accessories/book/end