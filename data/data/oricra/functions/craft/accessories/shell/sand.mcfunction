#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:magma_cream{display:{Name:'[{"text": "sand shell","color":"yellow"}]',Lore:['[{"text":"このアイテムをインベントリの左上から一つ横にセットすると使用manaの2%が回復する(上限5)","color": "white"}]']},CustomModelData:65,accessories:1b,per:2,mana_plus:1b} 1

#進捗
advancement grant @p only mikatanserver:customcrafter/accessories/shell/sand