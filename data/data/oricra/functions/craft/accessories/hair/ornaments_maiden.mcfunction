#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:magma_cream{display:{Name:'[{"text": "巫の髪飾り<白金>","color":"red"}]',Lore:['[{"text":"このアイテムをインベントリの左上にセットするとmanaの回復量が60%で+1される","color": "white"}]']},CustomModelData:50,holy:0b} 1

#進捗
advancement grant @p only mikatanserver:customcrafter/accessories/hair/ornaments_maiden