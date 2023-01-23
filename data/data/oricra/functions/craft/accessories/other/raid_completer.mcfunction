#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:magma_cream{display:{Name:'[{"text": "huger piece","color":"gold"}]',Lore:['[{"text":"このアイテムをインベントリの左上からふたつ横セットすると防御力が+1される","color": "white"}]']},CustomModelData:72} 1

#進捗
advancement grant @p only mikatanserver:customcrafter/accessories/other/huger_piece