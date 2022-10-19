#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:magma_cream{display:{Name:'[{"text": "巫の髪飾り<金>","color":"gold"}]',Lore:['[{"text":"このアイテムをインベントリの右上にセットするとmanaの回復量が55%で+1される","color": "white"}]']},CustomModelData:49} 1

#進捗
advancement grant @p only mikatanserver:customcrafter/accessories/hair/ornaments_gold