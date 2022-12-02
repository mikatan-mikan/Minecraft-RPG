#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:carrot_on_a_stick{display:{Name:'[{"text":"ruins symbol","color": "yellow"}]',Lore:['[{"text": "このアイテムを使用すると採石時にruins petalが0.01%の確率でドロップするようになる","color":"white","italic": false}]']},CustomModelData:121} 1
