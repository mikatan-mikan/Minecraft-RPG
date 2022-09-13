#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:carrot_on_a_stick{Enchantments:[{id:"minecraft:mending",lvl:1}],display:{Name:'[{"text":"pumpkin rod","color": "gold"}]',Lore:['[{"text": "農穣の祈り","color": "gray","italic": false}]','[{"text": " 右クリックでmanaを30消費して再生能力1(4sを付与する)","color": "blue","italic": false}]','[{"text":"降り注ぐ念","color": "gray","italic": false}]','[{"text": " 条件：農穣の祈り発動時にmasic装備で統一されている","color": "blue","italic": false}]','[{"text": " manaを100消費し、自身の経験値Xpを500増加する","color": "blue","italic": false}]','[{"text": "利き手に持った時","color":"white","italic": false}]','[{"text":" 攻撃力 9","color": "dark_green","italic": false}]','[{"text": " 攻撃速度 1.6","color": "dark_green","italic": false}]']},HideFlags:2,CustomModelData:82,AttributeModifiers:[{AttributeName:"generic.attack_damage",Amount:9,Operation:0,Slot:"mainhand",UUID:[I;-956796003,830653523,393774358,-36031691]},{AttributeName:"generic.attack_speed",Amount:-2.4,Operation:0,Slot:"mainhand",UUID:[I;-212372333,307371239,101113870,96471227]}],pumpkin_rod:true} 1

#進捗
advancement grant @p only mikatanserver:event/halloween/armor
