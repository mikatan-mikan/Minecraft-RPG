#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:magma_cream{display:{Name:'[{"text": "deepslate batch","color":"yellow"}]',Lore:['[{"text":"このアイテムをインベントリの左上からふたつ横にセットすると"}]','[{"text":"深層岩を採掘したときに1秒間採掘速度上昇ⅠⅠが付与される"}]']},CustomModelData:40,deepslate_tier:1} 1

#進捗
advancement grant @p only mikatanserver:customcrafter/accessories/batch/deepslate