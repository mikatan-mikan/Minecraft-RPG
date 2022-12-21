#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:netherite_sword{display:{Name:'[{"text":"ruins sword","color": "green"}]',Lore:['[{"text": "利き手に持った時","color":"white","italic": false}]','[{"text":" 攻撃力 12.5","color": "dark_green","italic": false}]','[{"text": " 攻撃速度 1.6","color": "dark_green","italic": false}]','[{"text":" 移動速度 +5%","color": "dark_green","italic": false}]']},HideFlags:2,CustomModelData:6,AttributeModifiers:[{AttributeName:"minecraft:generic.movement_speed",Amount:0.05,Operation:2,UUID:[I;915581423,-105458275,-295946392,141342354]},{AttributeName:"generic.attack_damage",Amount:12.5,Operation:0,Slot:"mainhand",UUID:[I;-956796003,830653523,393774358,-36031691]},{AttributeName:"generic.attack_speed",Amount:-2.4,Operation:0,Slot:"mainhand",UUID:[I;-212372333,307371239,101113870,96471227]}]} 1

#進捗
advancement grant @p only mikatanserver:event/ruins/make_ruinswr