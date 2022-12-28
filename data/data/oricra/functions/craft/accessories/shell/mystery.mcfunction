#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:magma_cream{display:{Name:'[{"text": "謎の塊","color":"yellow"}]',Lore:['[{"text":"このアイテムをインベントリの左上から一つ横にセットすると使用manaの5%が回復する(上限5)","color": "white"}]']},CustomModelData:70,accessories:1b,per:5,mana_plus:1b} 1

#進捗
advancement grant @p only mikatanserver:customcrafter/accessories/shell/mystery_mass
