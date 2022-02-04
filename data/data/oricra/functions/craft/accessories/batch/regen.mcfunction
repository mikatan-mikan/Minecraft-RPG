#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:magma_cream{display:{Name:'[{"text": "regeneration batch","color":"yellow"}]',Lore:['[{"text":"このアイテムをインベントリの左上からふたつ横にセットすると攻撃ヒット時に3秒間再生能力Ⅰが付与される"}]']},CustomModelData:30} 1

#進捗
advancement grant @p only mikatanserver:customcrafter/accessories/batch/regen