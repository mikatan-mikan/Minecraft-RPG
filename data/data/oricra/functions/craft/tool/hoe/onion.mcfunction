#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:wooden_hoe{display:{Name:'[{"text":"red onion hoe","color": "red"}]',Lore:['[{"text": "農家","color": "gray","italic": false}]','[{"text": " 採取時に移動速度上昇が付与される。","color": "blue","italic": false}]','[{"text": "利き手に持った時","color":"white","italic": false}]','[{"text":" 攻撃力 2","color": "dark_green","italic": false}]','[{"text": " 攻撃速度 4.0","color": "dark_green","italic": false}]']},HideFlags:2,AttributeModifiers:[{AttributeName:"generic.attack_speed",Amount:-0.0,Operation:0,UUID:[I;13447191,-304867078,-473838902,652051635]},{AttributeName:"generic.attack_damage",Amount:2,Operation:0,Slot:"mainhand",UUID:[I;-956796003,830653523,393774358,-36031691]}],onion_hoe:1b} 1

#進捗
advancement grant @p only mikatanserver:event/farm/pickaxe