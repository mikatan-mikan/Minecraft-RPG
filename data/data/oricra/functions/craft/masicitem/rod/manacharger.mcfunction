#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p


#アイテム
item replace block ~ ~ ~ container.4 with minecraft:carrot_on_a_stick{Enchantments:[{id:"minecraft:mending",lvl:1},{id:"minecraft:smite",lvl:3},{id:"minecraft:sharpness",lvl:5}],display:{Name:'[{"text":"mana charger","color": "blue"}]',Lore:['[{"text": "マナⅠ","color": "gray","italic": false}]','[{"text": " 右クリックでmanaを1回復する(cool time 1s)","color": "blue","italic": false}]','[{"text": "利き手に持った時","color":"white","italic": false}]','[{"text":" 攻撃力 11","color": "dark_green","italic": false}]','[{"text": " 攻撃速度 1.6","color": "dark_green","italic": false}]','[{"text":" 防具 +2","color": "dark_green","italic": false}]','[{"text":" スピード +15%","color": "dark_green","italic": false}]']},CustomModelData:31,AttributeModifiers:[{AttributeName:"generic.movement_speed",Amount:0.015,Operation:0,UUID:[I;13447191,-304867078,-473838902,652051635],Slot:"mainhand"},{AttributeName:"generic.armor",Amount:2.0,Operation:0,UUID:[I;915581423,-105458275,-295946392,53618116],Slot:"mainhand"},{AttributeName:"generic.attack_damage",Amount:8,Operation:0,Slot:"mainhand",UUID:[I;-956796003,830653523,393774358,-36031691]},{AttributeName:"generic.attack_speed",Amount:-2.4,Operation:0,Slot:"mainhand",UUID:[I;-212372333,307371239,101113870,96471227]}],HideFlags:2}

#進捗
advancement grant @p only mikatanserver:customcrafter/manacharger



