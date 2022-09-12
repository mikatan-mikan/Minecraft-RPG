#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:carrot_on_a_stick{Enchantments:[{id:"minecraft:mending",lvl:1}],display:{Name:'[{"text":"飛剣","color": "green"}]',Lore:['[{"text": "ダメージ増加Ⅴ","color": "gray","italic": false}]','[{"text": "跳躍Ⅰ","color": "gray","italic": false}]','[{"text": " 右クリックでmanaを25消費して自身を前方向にブーストする","color": "blue","italic": false}]','[{"text": "利き手に持った時","color":"white","italic": false}]','[{"text":" 攻撃力 11","color": "dark_green","italic": false}]','[{"text": " 攻撃速度 1.6","color": "dark_green","italic": false}]']},HideFlags:2,CustomModelData:21,AttributeModifiers:[{AttributeName:"generic.attack_damage",Amount:11,Operation:0,Slot:"mainhand",UUID:[I;-956796003,830653523,393774358,-36031691]},{AttributeName:"generic.attack_speed",Amount:-2.4,Operation:0,Slot:"mainhand",UUID:[I;-212372333,307371239,101113870,96471227]}]} 1

#進捗
advancement grant @p only mikatanserver:customcrafter/rod_and_sword/flyingsword


