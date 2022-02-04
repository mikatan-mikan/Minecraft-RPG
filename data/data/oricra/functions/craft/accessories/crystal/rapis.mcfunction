#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:magma_cream{display:{Name:'[{"text": "rapis crystal","color":"blue"}]',Lore:['[{"text":"このアイテムをインベントリの左上にセットすると20%の確率でエンチャント時のxpが倍になる"}]']},CustomModelData:15} 1

#進捗
advancement grant @p only mikatanserver:customcrafter/accessories/crystal/rapis