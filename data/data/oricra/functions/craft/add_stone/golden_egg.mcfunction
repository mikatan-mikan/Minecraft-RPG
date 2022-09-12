#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:carrot_on_a_stick{display:{Name:'[{"text":"egg symbol","color": "green"}]',Lore:['[{"text": "このアイテムを使用すると採石時にgolden eggが0.07%の確率でドロップするようになる","color":"white","italic": false}]']},CustomModelData:79} 1
