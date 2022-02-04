#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:magma_cream{display:{Name:'[{"text": "diamond ishiza","color":"aqua"}]',Lore:['[{"text":"このアイテムをインベントリの右上にセットすると10%の確率で討伐時のxpが倍になる"}]']},CustomModelData:17} 1

#進捗
advancement grant @p only mikatanserver:customcrafter/accessories/ishiza/diamond