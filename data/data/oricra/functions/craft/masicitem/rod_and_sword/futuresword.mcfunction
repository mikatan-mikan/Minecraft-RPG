#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:carrot_on_a_stick{Enchantments:[{id:"minecraft:mending",lvl:1},{id:"minecraft:smite",lvl:3}],display:{Name:'[{"text":"想剣","color": "yellow"}]',Lore:['[{"text": "ダメージ増加Ⅴ","color": "gray","italic": false}]','[{"text": "想いの結晶Ⅰ","color": "gray","italic": false}]','[{"text": " 右クリックでmanaを100消費して自身と周りのプレイヤーを強化する","color": "blue","italic": false}]','[{"text": "利き手に持った時","color":"white","italic": false}]','[{"text":" 攻撃力 12","color": "dark_green","italic": false}]','[{"text": " 攻撃速度 1.6","color": "dark_green","italic": false}]','[{"text":" 防具 +2","color": "dark_green","italic": false}]','[{"text":" スピード +15%","color": "dark_green","italic": false}]']},HideFlags:2,CustomModelData:20,AttributeModifiers:[{AttributeName:"generic.movement_speed",Amount:0.015,Operation:0,UUID:[I;13447191,-304867078,-473838902,652051635]},{AttributeName:"generic.armor",Amount:2.0,Operation:0,UUID:[I;915581423,-105458275,-295946392,53618116]},{AttributeName:"generic.attack_damage",Amount:12,Operation:0,Slot:"mainhand",UUID:[I;-956796003,830653523,393774358,-36031691]},{AttributeName:"generic.attack_speed",Amount:-2.4,Operation:0,Slot:"mainhand",UUID:[I;-212372333,307371239,101113870,96471227]}]} 1

#進捗
advancement grant @p only mikatanserver:customcrafter/rod_and_sword/futuresword


