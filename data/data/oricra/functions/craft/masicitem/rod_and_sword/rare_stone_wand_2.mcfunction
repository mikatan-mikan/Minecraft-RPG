#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:carrot_on_a_stick{Enchantments:[{id:"minecraft:mending",lvl:1},{id:"minecraft:smite",lvl:6}],display:{Name:'[{"text":"翠創杖","color": "yellow"}]',Lore:['[{"text": "翡翠の輝きII","color": "gray","italic": false}]','[{"text": " 右クリックで周囲5mのモブに対して","color":"blue"},{"text": "翡翠の拘束II","color":"green"},{"text": "を与える(cool time 10s)","color": "blue","italic": false}]','[{"text": "天使の加護II","color": "gray","italic": false}]','[{"text": " 条件：翡翠の輝き発動時に自身の防具がangelシリーズで統一されている","color": "blue","italic": false}]','[{"text": " 4hpの衝撃吸収と花火を与える","color": "blue","italic": false}]','[{"text": "樹木の囁きII","color": "gray","italic": false}]','[{"text": " 条件：翡翠の輝き発動時に自身の防具がforestシリーズで統一されている","color": "blue","italic": false}]','[{"text": " manaを30消費して、周囲15mの味方に即時回復2と耐性1を2s与える","color": "blue","italic": false}]','[{"text": "巫の加護","color": "gray","italic": false}]','[{"text":" 条件：翡翠の輝き発動時に左上スロットが巫の髪飾りである","color": "blue","italic": false}]','[{"text": " 満腹度回復1(1s)を付与する","color": "blue","italic": false}]','[{"text": "利き手に持った時","color":"white","italic": false}]','[{"text":" 攻撃力 12","color": "dark_green","italic": false}]','[{"text": " 攻撃速度 1.6","color": "dark_green","italic": false}]','[{"text":" 防具 +2","color": "dark_green","italic": false}]','[{"text":" スピード +15%","color": "dark_green","italic": false}]']},HideFlags:2,CustomModelData:59,AttributeModifiers:[{AttributeName:"generic.movement_speed",Amount:0.015,Operation:0,UUID:[I;13447191,-304867078,-473838902,652051635]},{AttributeName:"generic.armor",Amount:2.0,Operation:0,UUID:[I;915581423,-105458275,-295946392,53618116]},{AttributeName:"generic.attack_damage",Amount:12,Operation:0,Slot:"mainhand",UUID:[I;-956796003,830653523,393774358,-36031691]},{AttributeName:"generic.attack_speed",Amount:-2.4,Operation:0,Slot:"mainhand",UUID:[I;-212372333,307371239,101113870,96471227]}]} 1

give @p minecraft:carrot_on_a_stick{CustomModelData:60,display:{Name:'[{"text":"effort symbol[orange]","color":"gold"}]',Lore:['[{"text":"このアイテムを右クリックすると自身のネームカラーを変更し、称号:[歴史の採掘者]を得る"}]','[{"text":"mana cost:20"}]']}} 1

#進捗
advancement grant @p only mikatanserver:customcrafter/rod_and_sword/rare_stone_2


