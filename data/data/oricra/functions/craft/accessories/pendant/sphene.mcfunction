#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:magma_cream{display:{Name:'[{"text": "sphene pendant","color":"aqua"}]',Lore:['[{"text":"このアイテムをインベントリの左上にセットするとmanaの回復量が30%で+1される"}]']},CustomModelData:23} 1

#進捗
advancement grant @p only mikatanserver:customcrafter/accessories/pendant/sphene