#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:carrot_on_a_stick{Enchantments:[{id:"minecraft:mending",lvl:1},{id:"minecraft:smite",lvl:6}],display:{Name:'[{"text":"榴杖","color": "dark_purple"}]',Lore:['[{"text": "柘榴の輝き","color": "gray","italic": false}]','[{"text": " 右クリックで周囲5mのモブに対して","color":"blue","italic": false},{"text": "柘榴の拘束","color":"dark_purple","italic": false},{"text": "を与える(cool time 10s)","color": "blue","italic": false}]','[{"text": "悪魔の加護","color": "gray","italic": false}]','[{"text": " 条件：柘榴の輝き発動時に自身の防具がdevilシリーズで統一されている","color": "blue","italic": false}]','[{"text": " manaを30消費して4hpの衝撃吸収と耐性1(1s)を与える","color": "blue","italic": false}]','[{"text": "聖樹の囁き","color": "gray","italic": false}]','[{"text": " 条件：柘榴の輝き発動時に自身の防具がfresh greenシリーズで統一されている","color": "blue","italic": false}]','[{"text": " manaを40消費して、周囲15mの味方に対して即時回復2を与え、manaを5回復させる","color": "blue","italic": false}]','[{"text": "利き手に持った時","color":"white","italic": false}]','[{"text":" 攻撃力 12","color": "dark_green","italic": false}]','[{"text": " 攻撃速度 1.6","color": "dark_green","italic": false}]','[{"text":" 防具 +2","color": "dark_green","italic": false}]','[{"text":" スピード +12%","color": "dark_green","italic": false}]']},HideFlags:2,CustomModelData:120,AttributeModifiers:[{AttributeName:"generic.movement_speed",Amount:0.012,Operation:0,UUID:[I;13447191,-304867078,-473838902,652051635]},{AttributeName:"generic.armor",Amount:2.0,Operation:0,UUID:[I;915581423,-105458275,-295946392,53618116]},{AttributeName:"generic.attack_damage",Amount:12,Operation:0,Slot:"mainhand",UUID:[I;-956796003,830653523,393774358,-36031691]},{AttributeName:"generic.attack_speed",Amount:-2.4,Operation:0,Slot:"mainhand",UUID:[I;-212372333,307371239,101113870,96471227]}]} 1

#進捗
advancement grant @p only mikatanserver:customcrafter/rod_and_sword/devil_rod

