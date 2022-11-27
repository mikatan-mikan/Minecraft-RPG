#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:magma_cream{display:{Name:'[{"text": "ender crystal tier2","color":"dark_purple"}]',Lore:['[{"text":"このアイテムをインベントリの左上にセットするとエンダークエストLv上昇時にXPlvが25lv上昇する"}]']},CustomModelData:54,tier:2} 1

#進捗
advancement grant @p only mikatanserver:customcrafter/accessories/crystal/ender_2