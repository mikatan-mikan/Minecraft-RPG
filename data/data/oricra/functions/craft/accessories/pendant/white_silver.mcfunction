#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:magma_cream{display:{Name:'[{"text": "white silver pendant","color":"white"}]',Lore:['[{"text":"このアイテムをインベントリの左上からひとつ横にセットするとmanaの回復量が30%で+1される"}]']},CustomModelData:75} 1

#進捗
advancement grant @p only mikatanserver:customcrafter/accessories/pendant/white_silver