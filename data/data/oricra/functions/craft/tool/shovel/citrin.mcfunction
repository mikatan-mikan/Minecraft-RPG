#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:netherite_shovel{display:{Name:'[{"text":"citrin shovel"}]',Lore:['[{"text": "利き手に持った時","color":"white","italic": false}]','[{"text":" 攻撃力 6.5","color": "dark_green","italic": false}]','[{"text": " 攻撃速度 1.0","color": "dark_green","italic": false}]','[{"text":" 防具 +2","color": "dark_green","italic": false}]']},HideFlags:2,CustomModelData:11,AttributeModifiers:[{AttributeName:"generic.armor",Amount:2.0,Operation:0,UUID:[I;915581423,-105458275,-295946392,53618116]},{AttributeName:"generic.attack_damage",Amount:6.5,Operation:0,Slot:"mainhand",UUID:[I;-956796003,830653523,393774358,-36031691]},{AttributeName:"generic.attack_speed",Amount:-3.0,Operation:0,Slot:"mainhand",UUID:[I;-212372333,307371239,101113870,96471227]}]} 1

#進捗
advancement grant @p only mikatanserver:customcrafter/tool/citrincraft