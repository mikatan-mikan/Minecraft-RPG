#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:magma_cream{display:{Name:'[{"text": "island crystal","color":"green"}]',Lore:['[{"text":"このアイテムをインベントリの左上にセットするとAtkD,AtkSLv上昇時にXPlvが35lv上昇する"}]']},CustomModelData:48} 1

#進捗
advancement grant @p only mikatanserver:customcrafter/accessories/crystal/island