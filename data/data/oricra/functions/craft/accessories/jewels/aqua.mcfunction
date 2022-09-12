#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:magma_cream{display:{Name:'[{"text": "jewels of aqua","color":"aqua"}]',Lore:['[{"text":"このアイテムをインベントリの左上にセットするとfarming luckの上昇率が2.5倍になる"}]']},CustomModelData:21} 1

#進捗
advancement grant @p only mikatanserver:customcrafter/accessories/jewels/aqua