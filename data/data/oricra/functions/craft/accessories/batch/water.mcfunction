#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:magma_cream{display:{Name:'[{"text": "water batch","color":"aqua"}]',Lore:['[{"text":"このアイテムをインベントリの左上からふたつ横にセットすると"}]','[{"text": "攻撃ヒット時かつ水中にいるときに3秒間再生能力が付与される"}]']},CustomModelData:67} 1

#進捗
advancement grant @p only mikatanserver:customcrafter/accessories/batch/water