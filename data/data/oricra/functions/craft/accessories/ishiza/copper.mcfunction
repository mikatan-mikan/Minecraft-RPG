#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:magma_cream{display:{Name:'[{"text": "copper ishiza","color":"gold"}]',Lore:['[{"text":"このアイテムをインベントリの左上にセットすると5%の確率で討伐時のxpが+1される"}]']},CustomModelData:16} 1

#進捗
advancement grant @p only mikatanserver:customcrafter/accessories/ishiza/copper