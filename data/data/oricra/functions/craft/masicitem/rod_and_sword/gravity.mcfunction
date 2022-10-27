#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:carrot_on_a_stick{Enchantments:[{id:"minecraft:mending",lvl:1},{id:"minecraft:smite",lvl:5}],display:{Name:'[{"text":"グラビティスピア","color": "yellow"}]',Lore:['[{"text": "重力操作","color": "gray","italic": false}]','[{"text": " 右クリックでmanaを40消費して周囲5mのモブを","color": "blue","italic": false},{"text":"重力","color": "red","italic": false},{"text":"状態にする","color": "blue","italic": false}]','[{"text": "自然の加護","color": "gray","italic": false}]','[{"text": " 条件：重力操作発動時に自身の防具がnatureシリーズで統一されている","color": "blue","italic": false}]','[{"text": " 周囲3mの味方に4hpの衝撃吸収を与える","color": "blue","italic": false}]','[{"text": "利き手に持った時","color":"white","italic": false}]','[{"text":" 攻撃力 13","color": "dark_green","italic": false}]','[{"text": " 攻撃速度 1.6","color": "dark_green","italic": false}]','[{"text":" スピード +7%","color": "dark_green","italic": false}]']},HideFlags:2,CustomModelData:107,AttributeModifiers:[{AttributeName:"generic.movement_speed",Amount:0.007,Operation:0,UUID:[I;13447191,-304867078,-473838902,652051635]},{AttributeName:"generic.attack_damage",Amount:13,Operation:0,Slot:"mainhand",UUID:[I;-956796003,830653523,393774358,-36031691]},{AttributeName:"generic.attack_speed",Amount:-2.4,Operation:0,Slot:"mainhand",UUID:[I;-212372333,307371239,101113870,96471227]}]} 1

#進捗
advancement grant @p only mikatanserver:customcrafter/rod_and_sword/gravity_sp


