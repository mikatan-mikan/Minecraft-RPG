#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:netherite_hoe{display:{Name:'[{"text":"peridot hoe"}]',Lore:['[{"text": "利き手に持った時","color":"white","italic": false}]','[{"text":" 攻撃力 2","color": "dark_green","italic": false}]','[{"text": " 攻撃速度 4.0","color": "dark_green","italic": false}]','[{"text":" ノックバック耐性 +0.1","color": "dark_green","italic": false}]']},HideFlags:2,CustomModelData:6,AttributeModifiers:[{AttributeName:"generic.attack_damage",Amount:2,Operation:0,Slot:"mainhand",UUID:[I;-956796003,830653523,393774358,-36031691]},{AttributeName:"minecraft:generic.knockback_resistance",Amount:0.1,Operation:0,UUID:[I;105581423,-105458275,-295946392,53618116]}]} 1

#進捗
advancement grant @p only mikatanserver:customcrafter/tool/peridotcraft