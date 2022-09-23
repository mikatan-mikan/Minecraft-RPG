#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:magma_cream{display:{Name:'[{"text": "farming crysta tier2","color":"dark_purple"}]',Lore:['[{"text":"このアイテムをインベントリの右上にセットすると2%の確率で作物回収時にの一部他レベルのxpを得られる"}]']},CustomModelData:47} 1

#進捗
advancement grant @p only mikatanserver:customcrafter/accessories/farming/ac_xp_2