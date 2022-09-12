#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:carrot_on_a_stick{display:{Name:'[{"text":"ender symbol","color": "light_purple"}]',Lore:['[{"text": "このアイテムを使用すると伐採時にender stoneが0.2%の確率でドロップするようになる","color":"white","italic": false}]']},CustomModelData:67} 1
