#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:magma_cream{display:{Name:'[{"text": "undine\'s drip","color":"aqua"}]',Lore:['[{"text":"このアイテムをインベントリの左上からふたつ横セットするとスピードが+5%される","color": "white"}]']},CustomModelData:82} 1

#進捗
advancement grant @p only mikatanserver:customcrafter/accessories/other/undine_drip