#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:magma_cream{display:{Name:'[{"text": "nether crystal","color":"dark_purple"}]',Lore:['[{"text":"このアイテムをインベントリの左上にセットするとネザークエストLv上昇時にXPlvが20lv上昇する"}]']},CustomModelData:63,tier:1} 1

#進捗
advancement grant @p only mikatanserver:customcrafter/accessories/crystal/nether