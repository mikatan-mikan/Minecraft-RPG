#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:netherite_hoe{display:{Name:'[{"text":"citrin hoe"}]',Lore:['[{"text": "利き手に持った時","color":"white","italic": false}]','[{"text":" 攻撃力 1","color": "dark_green","italic": false}]','[{"text": " 攻撃速度 4.0","color": "dark_green","italic": false}]','[{"text":" 防具 +2","color": "dark_green","italic": false}]']},HideFlags:2,CustomModelData:10,AttributeModifiers:[{AttributeName:"generic.armor",Amount:1.0,Operation:0,UUID:[I;915581423,-105458275,-295946392,53618116]},{AttributeName:"generic.attack_damage",Amount:2,Operation:0,Slot:"mainhand",UUID:[I;-956796003,830653523,393774358,-36031691]}]} 1

#進捗
advancement grant @p only mikatanserver:customcrafter/tool/citrincraft