#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:magma_cream{display:{Name:'[{"text": "slime pendant","color":"green"}]',Lore:['[{"text":"このアイテムをインベントリの左上からひとつ横にセットするとmanaの回復量が40%で倍になる"}]']},CustomModelData:56} 1

#進捗
advancement grant @p only mikatanserver:customcrafter/accessories/pendant/slime