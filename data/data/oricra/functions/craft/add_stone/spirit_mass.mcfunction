#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:carrot_on_a_stick{display:{Name:'[{"text":"spirit symbol","color": "dark_purple"}]',Lore:['[{"text": "このアイテムを使用すると採石時にspirit massが0.05%の確率でドロップするようになる","color":"white","italic": false}]']},CustomModelData:55} 1
