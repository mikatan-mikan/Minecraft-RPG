#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:magma_cream{display:{Name:'[{"text": "mana batch","color":"blue"}]',Lore:['[{"text":"このアイテムをインベントリの左上からふたつ横にセットすると攻撃ヒット時にマナが+1される"}]']},CustomModelData:43} 1

#進捗
advancement grant @p only mikatanserver:customcrafter/accessories/batch/mana