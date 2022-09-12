#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:magma_cream{display:{Name:'[{"text": "obsidian pendant","color":"aqua"}]',Lore:['[{"text":"このアイテムをインベントリの左上からひとつ横にセットするとmanaの回復量が20%で倍になる"}]']},CustomModelData:29} 1

#進捗
advancement grant @p only mikatanserver:customcrafter/accessories/pendant/obsidian