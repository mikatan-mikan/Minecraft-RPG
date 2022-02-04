#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:magma_cream{display:{Name:'[{"text": "stone brecelet","color":"gray"}]',Lore:['[{"text":"このアイテムをインベントリの左上にセットすると5%の確率で釣り時のxpが倍になる"}]']},CustomModelData:10} 1

#進捗
advancement grant @p only mikatanserver:customcrafter/accessories/brecelet/stone