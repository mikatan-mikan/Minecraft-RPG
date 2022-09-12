#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:carrot_on_a_stick{display:{Name:'[{"text":"farming symbol","color": "green"}]',Lore:['[{"text": "このアイテムを使用すると農作物の回収時にfarming crystalが0.1%の確率でドロップするようになる","color":"white","italic": false}]']},CustomModelData:56} 1
