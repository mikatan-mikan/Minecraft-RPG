#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:netherite_pickaxe{display:{Name:'[{"text":"sphene pickaxe"}]',Lore:['[{"text": "利き手に持った時","color":"white","italic": false}]','[{"text":" 攻撃力 6","color": "dark_green","italic": false}]','[{"text": " 攻撃速度 1.2","color": "dark_green","italic": false}]','[{"text":" 防具強度 +1","color": "dark_green","italic": false}]']},HideFlags:2,CustomModelData:3,AttributeModifiers:[{AttributeName:"generic.armor_toughness",Amount:1.0,Operation:0,UUID:[I;-419633604,41524310,-654397515,318086387]},{AttributeName:"generic.attack_damage",Amount:6,Operation:0,Slot:"mainhand",UUID:[I;-956796003,830653523,393774358,-36031691]},{AttributeName:"generic.attack_speed",Amount:-2.8,Operation:0,Slot:"mainhand",UUID:[I;-212372333,307371239,101113870,96471227]}]} 1

#進捗
advancement grant @p only mikatanserver:customcrafter/tool/sphenecraft