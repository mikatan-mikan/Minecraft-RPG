#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:carrot_on_a_stick{Enchantments:[{id:"minecraft:mending",lvl:1}],display:{Name:'[{"text":"幸運の杖","color": "green"}]',Lore:['[{"text": "幸運の祈祷","color": "gray","italic": false}]','[{"text": " 右クリックでmanaを60消費して追尾弾を放つ","color": "blue","italic": false}]','[{"text":"永久不変の循環","color": "gray","italic": false}]','[{"text": " 条件：幸運の祈祷発動時にsphene装備で統一されている","color": "blue","italic": false}]','[{"text": " 追尾弾をさらに2発放つ","color": "blue","italic": false}]','[{"text": "ありふれる幸運","color": "gray","italic": false}]','[{"text": " 条件：幸運の祈祷発動時にluck装備で統一されている","color": "blue","italic": false}]','[{"text": " manaを10消費して追尾弾をさらに4発放つ","color": "blue","italic": false}]','[{"text": "利き手に持った時","color":"white","italic": false}]','[{"text":" 攻撃力 7","color": "dark_green","italic": false}]','[{"text": " 攻撃速度 1.6","color": "dark_green","italic": false}]','[{"text":" 防具 +1","color": "dark_green","italic": false}]','[{"text":" スピード +20%","color": "dark_green","italic": false}]']},HideFlags:2,CustomModelData:63,AttributeModifiers:[{AttributeName:"generic.movement_speed",Amount:0.020,Operation:0,UUID:[I;13447191,-304867078,-473838902,652051635]},{AttributeName:"generic.armor",Amount:1.0,Operation:0,UUID:[I;915581423,-105458275,-295946392,53618116]},{AttributeName:"generic.attack_damage",Amount:7,Operation:0,Slot:"mainhand",UUID:[I;-956796003,830653523,393774358,-36031691]},{AttributeName:"generic.attack_speed",Amount:-2.4,Operation:0,Slot:"mainhand",UUID:[I;-212372333,307371239,101113870,96471227]}]} 1

#進捗
advancement grant @p only mikatanserver:customcrafter/rod_and_sword/luck


