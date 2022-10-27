#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:carrot_on_a_stick{display:{Name:'[{"text":"gravity symbol","color": "gray"}]',Lore:['[{"text": "このアイテムを使用すると採木時にgravity grainが0.3%の確率でドロップするようになる","color":"white","italic": false}]']},CustomModelData:106} 1
