#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:netherite_axe{display:{Name:'[{"text":"hematite axe"}]',Lore:['[{"text": "利き手に持った時","color":"white","italic": false}]','[{"text":" 攻撃力 10","color": "dark_green","italic": false}]','[{"text": " 攻撃速度 1.0","color": "dark_green","italic": false}]','[{"text":" 最大体力 +1","color": "dark_green","italic": false}]']},HideFlags:2,CustomModelData:10,AttributeModifiers:[{AttributeName:"generic.max_health",Amount:1.0,Operation:0,UUID:[I;-419633604,41524310,-654397515,318086387]},{AttributeName:"generic.attack_damage",Amount:10,Operation:0,Slot:"mainhand",UUID:[I;-956796003,830653523,393774358,-36031691]},{AttributeName:"generic.attack_speed",Amount:-3.0,Operation:0,Slot:"mainhand",UUID:[I;-212372333,307371239,101113870,96471227]}]} 1

#進捗
advancement grant @p only mikatanserver:customcrafter/tool/hematitecraft