#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:magma_cream{display:{Name:'[{"text": "rhodochrosite crystal","color":"light_purple"}]',Lore:['[{"text":"このアイテムをインベントリの左上にセットすると100%の確率で特定エンチャント時(5lvエンチャ(Manaxp+10,Lvxp-1))のxpが+6される"}]','[{"text":"さらにgoddess crystalを使用中なら+3される"}]']},CustomModelData:84} 1

#進捗
advancement grant @p only mikatanserver:customcrafter/accessories/crystal/rhodochrosite