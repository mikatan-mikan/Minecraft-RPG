#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:magma_cream{display:{Name:'[{"text": "巫の髪飾り","color":"red"}]',Lore:['[{"text":"このアイテムをインベントリの右上にセットするとmanaの回復量が40%で+1される","color": "white"}]']},CustomModelData:33} 1

#進捗
advancement grant @p only mikatanserver:customcrafter/accessories/hair/ornaments