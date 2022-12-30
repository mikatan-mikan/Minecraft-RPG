#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:magma_cream{display:{Name:'[{"text": "silf\'s leaf","color":"green"}]',Lore:['[{"text":"このアイテムをインベントリの左上からふたつ横セットすると攻撃力が+0.25される","color": "white"}]']},CustomModelData:71} 1

#進捗
advancement grant @p only mikatanserver:customcrafter/accessories/other/silf_leaf