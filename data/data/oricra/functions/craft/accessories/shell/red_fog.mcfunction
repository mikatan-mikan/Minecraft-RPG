#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:magma_cream{display:{Name:'[{"text": "赤き樽","color":"red"}]',Lore:['[{"text":"このアイテムをインベントリの左上から一つ横にセットすると使用manaの6%が回復する(上限5)","color": "white"}]']},CustomModelData:76,accessories:1b,per:6,mana_plus:1b} 1

#進捗
advancement grant @p only mikatanserver:customcrafter/accessories/shell/red_fog
