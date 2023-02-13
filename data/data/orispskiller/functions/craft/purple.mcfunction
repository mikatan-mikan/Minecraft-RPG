#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:carrot_on_a_stick{display:{Name:'[{"text": "special skill <purple>","color":"light_purple"}]',Lore:['[{"text":"MindCost","color":"yellow","italic": false},{"text" : " : ","color":"white","italic": false},{"text":"150","color":"green","italic": false,"bold": true}]']},SpecialSkill:1b,CustomModelData:168,tier:1s} 1
#進捗
advancement grant @p only mikatanserver:customspskiller/purple
