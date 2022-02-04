#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:magma_cream{display:{Name:'[{"text": "ruby ring","color":"red"}]',Lore:['[{"text":"このアイテムをインベントリの左上にセットすると10%の確率で木こり時のxpが倍になる"}]']},CustomModelData:5} 1

#進捗
advancement grant @p only mikatanserver:customcrafter/accessories/ring/ruby