#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:magma_cream{display:{Name:'[{"text": "magma crystal","color":"red"}]',Lore:['[{"text":"このアイテムをインベントリの左上にセットするとAtkDLv上昇時にXPlvが30lv上昇する"}]']},CustomModelData:35} 1

#進捗
advancement grant @p only mikatanserver:customcrafter/accessories/crystal/magma