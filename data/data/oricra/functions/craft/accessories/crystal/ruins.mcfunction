#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:magma_cream{display:{Name:'[{"text": "ruins crystal","color":"blue"}]',Lore:['[{"text":"このアイテムをインベントリの左上にセットすると30%の確率でエンチャント時のxpが倍になる"}]']},CustomModelData:46} 1

#進捗
advancement grant @p only mikatanserver:customcrafter/accessories/crystal/ruins