#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:magma_cream{display:{Name:'[{"text": "speed batch","color":"aqua"}]',Lore:['[{"text":"このアイテムをインベントリの左上からふたつ横にセットすると"}]','[{"text": "攻撃ヒット時に1秒間移動速度上昇Ⅰが付与される"}]']},CustomModelData:39} 1

#進捗
advancement grant @p only mikatanserver:customcrafter/accessories/batch/speed