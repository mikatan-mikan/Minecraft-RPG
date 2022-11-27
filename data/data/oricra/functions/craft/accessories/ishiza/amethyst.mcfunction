#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:magma_cream{display:{Name:'[{"text": "amethyst ishiza","color":"dark_purple"}]',Lore:['[{"text":"このアイテムをインベントリの右上にセットすると5%の確率で討伐時のxpが+1される"}]']},CustomModelData:18} 1

#進捗
advancement grant @p only mikatanserver:customcrafter/accessories/ishiza/amethyst