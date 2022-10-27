#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:magma_cream{display:{Name:'[{"text": "blue bell","color":"blue"}]',Lore:['[{"text":"このアイテムをインベントリの左上からひとつ横にセットすると25%の確率でエンチャント時と取引時のxpが+1になる"}]']},CustomModelData:53} 1

#進捗
advancement grant @p only mikatanserver:customcrafter/accessories/bell/blue