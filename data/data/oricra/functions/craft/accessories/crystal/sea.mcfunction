#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:magma_cream{display:{Name:'[{"text": "sea crystal","color":"aqua"}]',Lore:['[{"text":"このアイテムをインベントリの左上にセットするとAtkDLv上昇時にXPlvが25lv上昇する"}]']},CustomModelData:34} 1

#進捗
advancement grant @p only mikatanserver:customcrafter/accessories/crystal/sea