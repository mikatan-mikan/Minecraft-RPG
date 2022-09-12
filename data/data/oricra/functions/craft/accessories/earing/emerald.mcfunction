#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:magma_cream{display:{Name:'[{"text": "emerald earing","color":"green"}]',Lore:['[{"text":"このアイテムをインベントリの右上にセットすると20%の確率で取引時のxpが倍になる"}]']},CustomModelData:9} 1

#進捗
advancement grant @p only mikatanserver:customcrafter/accessories/earing/emerald