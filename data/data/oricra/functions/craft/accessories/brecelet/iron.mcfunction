#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:magma_cream{display:{Name:'[{"text": "iron brecelet","color":"white"}]',Lore:['[{"text":"このアイテムをインベントリの左上にセットすると10%の確率で釣り時のxpが+1される"}]']},CustomModelData:11} 1

#進捗
advancement grant @p only mikatanserver:customcrafter/accessories/brecelet/iron