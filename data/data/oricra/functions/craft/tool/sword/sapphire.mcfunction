#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:netherite_sword{display:{Name:'[{"text":"sapphire sword"}]',Lore:['[{"text": "利き手に持った時","color":"white","italic": false}]','[{"text":" 攻撃力 8","color": "dark_green","italic": false}]','[{"text": " 攻撃速度 1.7","color": "dark_green","italic": false}]']},HideFlags:2,CustomModelData:2,AttributeModifiers:[{AttributeName:"generic.attack_damage",Amount:8,Operation:0,Slot:"mainhand",UUID:[I;-956796003,830653523,393774358,-36031691]},{AttributeName:"generic.attack_speed",Amount:-2.3,Operation:0,Slot:"mainhand",UUID:[I;-212372333,307371239,101113870,96471227]}]} 1

#進捗
advancement grant @p only mikatanserver:customcrafter/tool/sapphirecraft