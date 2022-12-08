#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:magma_cream{display:{Name:'[{"text": "覡の指輪<日長>","color":"gold"}]',Lore:['[{"text":"このアイテムをインベントリの左上にセットするとmanaの回復量が60%で+1される","color": "white"}]']},CustomModelData:61} 1

#進捗
advancement grant @p only mikatanserver:customcrafter/accessories/ring2/tier3