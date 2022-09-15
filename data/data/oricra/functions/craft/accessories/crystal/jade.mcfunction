#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:magma_cream{display:{Name:'[{"text": "jade crystal","color":"green"}]',Lore:['[{"text":"このアイテムをインベントリの左上からひとつ横にセットすると20%の確率でエンチャント時のxpが+1になる"}]']},CustomModelData:36} 1

#進捗
advancement grant @p only mikatanserver:customcrafter/accessories/crystal/jade
advancement grant @p only mikatanserver:customcrafter/tool/jadecraft