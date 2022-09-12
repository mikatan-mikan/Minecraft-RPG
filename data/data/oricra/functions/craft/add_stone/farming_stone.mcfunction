#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:carrot_on_a_stick{display:{Name:'[{"text":"luck symbol","color": "green"}]',Lore:['[{"text": "このアイテムを使用すると農作物の回収時にluck crystalが0.5%の確率でドロップするようになる","color":"white","italic": false}]']},CustomModelData:61} 1
