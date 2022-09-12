#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:magma_cream{display:{Name:'[{"text": "jade ishiza","color":"green"}]',Lore:['[{"text":"このアイテムをインベントリの右上にセットすると50%の確率で討伐時のxpが+1になる"}]']},CustomModelData:38} 1

#進捗
advancement grant @p only mikatanserver:customcrafter/accessories/ishiza/jade
advancement grant @p only mikatanserver:customcrafter/tool/jadecraft