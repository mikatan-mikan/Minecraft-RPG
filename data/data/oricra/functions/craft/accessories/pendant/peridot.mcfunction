#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:magma_cream{display:{Name:'[{"text": "peridot pendant","color":"aqua"}]',Lore:['[{"text":"このアイテムをインベントリの左上にセットするとmanaの回復量が40%で倍になる"}]']},CustomModelData:24} 1

#進捗
advancement grant @p only mikatanserver:customcrafter/accessories/pendant/peridot