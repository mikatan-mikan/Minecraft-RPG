#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:leather_boots{display:{Name:'[{"text":"ruins boots"}]',color:12582656,Lore:['[{"text": "遺跡の解読","color": "gray","italic": false}]','[{"text": " 条件：攻撃時にruins装備で統一されている","color": "blue","italic": false}]','[{"text": " 耐性Ⅰ(1s)を付与する","color": "blue","italic": false}]','[{"text": "足に装備したとき :","color":"white","italic": false}]','[{"text":" 防具 +4","color": "dark_green","italic": false}]','[{"text": " 防具強度 +3","color": "dark_green","italic": false}]']},HideFlags:2,AttributeModifiers:[{AttributeName:"generic.armor",Amount:4.0,Operation:0,Slot:"feet",UUID:[I;1021312431,-72382314,-72342342,8273127]},{AttributeName:"generic.armor_toughness",Amount:3,Operation:0,Slot:"feet",UUID:[I;-212372333,307371239,423572532,196671228]}],Unbreakable:1b,armor_ruins:1b} 1