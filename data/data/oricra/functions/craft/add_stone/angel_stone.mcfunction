#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:carrot_on_a_stick{display:{Name:'[{"text":"angel symbol"}]',Lore:['[{"text": "このアイテムを使用すると採石時にangel stoneが0.1%の確率でドロップするようになる","color":"white","italic": false}]']},CustomModelData:50} 1
