#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:magma_cream{display:{Name:'[{"text": "salamander\'s fire","color":"red"}]',Lore:['[{"text":"このアイテムをインベントリの左上からふたつ横セットすると体力が+2される","color": "white"}]']},CustomModelData:78} 1

#進捗
advancement grant @p only mikatanserver:customcrafter/accessories/other/salamander_fire