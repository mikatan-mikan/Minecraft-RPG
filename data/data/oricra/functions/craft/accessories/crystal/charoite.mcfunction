#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:magma_cream{display:{Name:'[{"text": "charoite crystal","color":"dark_purple"}]',Lore:['[{"text":"このアイテムをインベントリの左上にセットすると100%の確率で特定エンチャント時(5lvエンチャ(Manaxp+1))のxpが+1される"}]']},CustomModelData:85} 1

#進捗
advancement grant @p only mikatanserver:customcrafter/accessories/crystal/charoite