#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:netherite_pickaxe{display:{Name:'[{"text":"moon stone pickaxe"}]',Lore:['[{"text": "利き手に持った時","color":"white","italic": false}]','[{"text":" 攻撃力 6","color": "dark_green","italic": false}]','[{"text": " 攻撃速度 1.2","color": "dark_green","italic": false}]','[{"text":" 最大体力 +2","color": "dark_green","italic": false}]','[{"text":" スピード +5%","color": "dark_green","italic": false}]']},HideFlags:2,CustomModelData:15,AttributeModifiers:[{AttributeName:"generic.movement_speed",Amount:0.005,Operation:0,UUID:[I;13447191,-304867078,-473838902,652051635]},{AttributeName:"minecraft:generic.max_health",Slot:"mainhand",Amount:2,Operation:0,UUID:[I;105581423,-105458275,-295946392,53618116]},{AttributeName:"generic.attack_damage",Amount:6,Operation:0,Slot:"mainhand",UUID:[I;-956796003,830653523,393774358,-36031691]},{AttributeName:"generic.attack_speed",Amount:-2.8,Operation:0,Slot:"mainhand",UUID:[I;-212372333,307371239,101113870,96471227]}]} 1

#進捗
advancement grant @p only mikatanserver:customcrafter/tool/moon_stonecraft