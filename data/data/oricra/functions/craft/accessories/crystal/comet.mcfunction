#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:magma_cream{display:{Name:'[{"text": "comet crystal","color":"aqua"}]',Lore:['[{"text":"このアイテムをインベントリの左上にセットするとAtkD,AtkSLv上昇時にXPlvが40lv上昇する"}]']},CustomModelData:58} 1

#進捗
advancement grant @p only mikatanserver:customcrafter/accessories/crystal/comet