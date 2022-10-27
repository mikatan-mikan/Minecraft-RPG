#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:magma_cream{display:{Name:'[{"text": "jump batch tier2","color":"yellow"}]',Lore:['[{"text":"このアイテムをインベントリの左上からふたつ横にセットすると攻撃ヒット時に1秒間跳躍力上昇Ⅰが付与される(上書き)"}]']},CustomModelData:51,tier:2} 1

#進捗
advancement grant @p only mikatanserver:customcrafter/accessories/batch/jump_2