#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:carrot_on_a_stick{Enchantments:[{id:"minecraft:mending",lvl:1},{id:"minecraft:smite",lvl:6}],display:{Name:'[{"text":"黄杖","color": "yellow"}]',Lore:['[{"text": "黄鉄の輝き","color": "gray","italic": false}]','[{"text": " 右クリックで周囲5mのモブに対して","color":"blue","italic": false},{"text": "黄鉄の拘束","color":"yellow","italic": false},{"text": "を与える(cool time 10s)","color": "blue","italic": false}]','[{"text": "黄鉄の加護","color": "gray","italic": false}]','[{"text": " 条件：黄鉄の輝き発動時に自身の防具がpyriteシリーズで統一されている","color": "blue","italic": false}]','[{"text": " manaを30消費して4hpの衝撃吸収と花火、再生能力を与える","color": "blue","italic": false}]','[{"text": "古代の知恵","color": "gray","italic": false}]','[{"text": " 条件：翡翠の輝き発動時に自身の防具がruinsシリーズで統一されている","color": "blue","italic": false}]','[{"text": " manaを30消費して、周囲5mの味方に即時回復1を与え、自身に耐性4(2s)を付与する","color": "blue","italic": false}]','[{"text": "利き手に持った時","color":"white","italic": false}]','[{"text":" 攻撃力 13","color": "dark_green","italic": false}]','[{"text": " 攻撃速度 1.6","color": "dark_green","italic": false}]','[{"text":" 防具 +2","color": "dark_green","italic": false}]','[{"text":" スピード +5%","color": "dark_green","italic": false}]']},HideFlags:2,CustomModelData:149,AttributeModifiers:[{AttributeName:"generic.movement_speed",Amount:0.005,Operation:0,UUID:[I;13447191,-304867078,-473838902,652051635]},{AttributeName:"generic.armor",Amount:2.0,Operation:0,UUID:[I;915581423,-105458275,-295946392,53618116]},{AttributeName:"generic.attack_damage",Amount:13,Operation:0,Slot:"mainhand",UUID:[I;-956796003,830653523,393774358,-36031691]},{AttributeName:"generic.attack_speed",Amount:-2.4,Operation:0,Slot:"mainhand",UUID:[I;-212372333,307371239,101113870,96471227]}],Season:3} 1

#進捗
advancement grant @p only mikatanserver:customcrafter/rod_and_sword/pyrite


