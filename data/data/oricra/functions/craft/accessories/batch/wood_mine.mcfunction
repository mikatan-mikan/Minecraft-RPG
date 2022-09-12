#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:magma_cream{display:{Name:'[{"text": "wooden batch","color":"green"}]',Lore:['[{"text":"このアイテムをインベントリの左上からふたつ横にセットすると"}]','[{"text": "AtkD経験値入手対象を採掘したときに1秒間採掘速度上昇Ⅰが付与される"}]']},CustomModelData:42} 1

#進捗
advancement grant @p only mikatanserver:customcrafter/accessories/batch/wooden