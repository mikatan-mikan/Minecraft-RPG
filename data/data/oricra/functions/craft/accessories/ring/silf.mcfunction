#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:magma_cream{display:{Name:'[{"text": "silf ring","color":"green"}]',Lore:['[{"text":"このアイテムをインベントリの左上にセットすると100%の確率で木こり時のxpが+1される"}]']},CustomModelData:73} 1

#進捗
advancement grant @p only mikatanserver:customcrafter/accessories/ring/silf