#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:netherite_pickaxe{display:{Name:'[{"text":"island pickaxe"}]',Lore:['[{"text": "利き手に持った時","color":"white","italic": false}]','[{"text":" 攻撃力 1","color": "dark_green","italic": false}]','[{"text": " 攻撃速度 1.3","color": "dark_green","italic": false}]']},HideFlags:2,CustomModelData:12,AttributeModifiers:[{AttributeName:"generic.attack_speed",Amount:-2.7,Operation:0,UUID:[I;13447191,-304867078,-473838902,652051635]},{AttributeName:"generic.attack_damage",Amount:1,Operation:0,Slot:"mainhand",UUID:[I;-956796003,830653523,393774358,-36031691]}],Enchantments:[{id:"minecraft:unbreaking",lvl:5s}]} 1

advancement grant @p only mikatanserver:event/island/pickaxe