#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:magma_cream{display:{Name:'[{"text": "coal crystal","color":"dark_purple"}]',Lore:['[{"text":"このアイテムをインベントリの左上からひとつ横にセットすると15%の確率でエンチャント時のxpが倍になる"}]']},CustomModelData:28} 1

#進捗
advancement grant @p only mikatanserver:customcrafter/accessories/crystal/coal