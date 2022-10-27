#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:magma_cream{display:{Name:'[{"text": "jump batch","color":"yellow"}]',Lore:['[{"text":"このアイテムをインベントリの左上からふたつ横にセットすると攻撃ヒット時に1秒間跳躍力上昇Ⅰが付与される"}]']},CustomModelData:51,tier:1} 1

#進捗
advancement grant @p only mikatanserver:customcrafter/accessories/batch/jump