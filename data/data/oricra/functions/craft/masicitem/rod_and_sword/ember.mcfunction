#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:carrot_on_a_stick{Enchantments:[{id:"minecraft:mending",lvl:1}],display:{Name:'[{"text":"ember sword","color": "yellow"}]',Lore:['[{"text": "ファイヤーブラスト","color": "gray","italic": false}]','[{"text": " 右クリックでmanaを40消費して前方向に火の粉を飛ばす(範囲：15m)","color": "blue","italic": false}]','[{"text": "滴る溶岩","color": "gray","italic": false}]','[{"text": " 条件：ファイヤーブラスト発動時にember装備で統一されている","color": "blue","italic": false}]','[{"text": " manaを25回復する","color": "blue","italic": false}]','[{"text": "利き手に持った時","color":"white","italic": false}]','[{"text":" 攻撃力 10","color": "dark_green","italic": false}]','[{"text": "滴る溶岩","color": "gray","italic": false}]','[{"text": " 攻撃速度 1.6","color": "dark_green","italic": false}]']},HideFlags:2,CustomModelData:69,AttributeModifiers:[{AttributeName:"generic.attack_damage",Amount:10,Operation:0,Slot:"mainhand",UUID:[I;-956796003,830653523,393774358,-36031691]},{AttributeName:"generic.attack_speed",Amount:-2.4,Operation:0,Slot:"mainhand",UUID:[I;-212372333,307371239,101113870,96471227]}]} 1

#進捗
advancement grant @p only mikatanserver:customcrafter/rod_and_sword/ember