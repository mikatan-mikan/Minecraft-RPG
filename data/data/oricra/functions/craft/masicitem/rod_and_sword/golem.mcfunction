#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:carrot_on_a_stick{Enchantments:[{id:"minecraft:mending",lvl:1},{id:"minecraft:smite",lvl:5}],display:{Name:'[{"text":"ゴーレムソード","color": "gray"}]',Lore:['[{"text": "鉄魂","color": "gray","italic": false}]','[{"text": " 右クリックでmanaを45消費して周囲5mのモブに大ダメージを与える","color": "blue","italic": false}]','[{"text": "共鳴","color": "gray","italic": false}]','[{"text": " 条件：鉄魂発動時に自身の防具がgolemシリーズで統一されている","color": "blue","italic": false}]','[{"text": " 自身に4hpの衝撃吸収を与え、周囲3mのプレイヤーにスピード2(3s)を与える","color": "blue","italic": false}]','[{"text": "利き手に持った時","color":"white","italic": false}]','[{"text":" 攻撃力 13","color": "dark_green","italic": false}]','[{"text": " 攻撃速度 1.7","color": "dark_green","italic": false}]','[{"text":" スピード +10%","color": "dark_green","italic": false}]']},HideFlags:2,CustomModelData:108,AttributeModifiers:[{AttributeName:"generic.movement_speed",Amount:0.01,Operation:0,UUID:[I;13447191,-304867078,-473838902,652051635]},{AttributeName:"generic.attack_damage",Amount:13,Operation:0,Slot:"mainhand",UUID:[I;-956796003,830653523,393774358,-36031691]},{AttributeName:"generic.attack_speed",Amount:-2.3,Operation:0,Slot:"mainhand",UUID:[I;-212372333,307371239,101113870,96471227]}]} 1

#進捗
advancement grant @p only mikatanserver:customcrafter/rod_and_sword/golem_sword


